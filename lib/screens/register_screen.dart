import 'package:flutter/material.dart';
import 'package:w_assure/screens/home_screen.dart';
import 'package:w_assure/utils/my_colors.dart';

class RegisterScreen extends StatefulWidget {

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  Widget _buildTextFormField(String label, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: TextStyle(
          fontFamily: 'CenturyGothic'
        ),
        decoration: InputDecoration(
          labelText: "$label",
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 14
          ),
          prefixIcon: Icon(
            icon
          ),
          filled: true,
          fillColor: MyColors.primary.withOpacity(0.08),

          errorStyle: TextStyle(
            letterSpacing: 1.2,
             shadows: [
              Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 0.3,
                  color: Colors.white70
              )
            ]
          )
          
        ),

        textInputAction: TextInputAction.next,
        // onFieldSubmitted: (_) {
        //   FocusScope.of(context).requestFocus(_passwordFocus);
        // },

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios
          ),
        ),
      ),

      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/5,
            color: MyColors.primary,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bienvenue !',
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: MyColors.white.withOpacity(0.9)
                    ),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    'Créer votre compte en quelques clic',
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                      fontSize: 15,
                      color: MyColors.white.withOpacity(0.8)
                    ),
                  ),
                ],
              ),
            ),
          ),//end color

          _buildTextFormField("Votre numero d'assurance", Icons.pin_outlined) ,
          _buildTextFormField("Bien assuré", Icons.gpp_good_outlined) ,
          _buildTextFormField("Votre Nom", Icons.person_outline) ,
          _buildTextFormField("Votre Prenoms", Icons.person_outline) ,
          _buildTextFormField("Pièce", Icons.chrome_reader_mode_outlined) ,
          _buildTextFormField("Votre date de naissance", Icons.date_range) ,

          SizedBox(height: 20,),

          Container(
            height: 50.0,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomeScreen()
                  )
                );
              },
              style: TextButton.styleFrom(
                // primary: Colors.white,
                backgroundColor: MyColors.primary,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: MyColors.primary, width: 1.4),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10)
                  )
                ), 
              ),
              child: Text(
                "Soumettre",
                style: TextStyle(
                  color: MyColors.white,
                  fontFamily: 'CenturyGothic',
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),

          SizedBox(height: 25,),
        ],
      ),
    );
  }
}