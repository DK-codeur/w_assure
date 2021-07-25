import 'package:flutter/material.dart';
import 'package:w_assure/utils/my_colors.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            height: MediaQuery.of(context).size.height/3.5,
            color: MyColors.primary,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello !',
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: MyColors.white.withOpacity(0.9)
                    ),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    'Veuillez vous connecter',
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                      fontSize: 15,
                      color: MyColors.white.withOpacity(0.8)
                    ),
                  ),
                ],
              ),
            ),
          ), //end color

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                decoration: BoxDecoration(
                  color: MyColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  cursorColor: MyColors.primary,
                  style: TextStyle(
                    fontFamily: 'CenturyGothic',
                    color: MyColors.primary,
                    fontWeight: FontWeight.bold
                  ),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: MyColors.primary,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.primary.withOpacity(0.3))
                    ),
                    labelText: 'Votre identifiant',
                    labelStyle: TextStyle(
                      fontFamily: 'CenturyGothic',
                      fontWeight: FontWeight.normal
                    ),
                    hintStyle: TextStyle(
                      fontFamily: 'CenturyGothic'
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                decoration: BoxDecoration(
                  color: MyColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  obscureText: true,
                  cursorColor: MyColors.primary,
                  style: TextStyle(
                    fontFamily: 'CenturyGothic',
                    color: MyColors.primary,
                    fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                    labelText: "Votre Mot de Passe",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.normal
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.primary.withOpacity(0.3))
                    ),
                    hintStyle: TextStyle(
                      fontFamily: 'CenturyGothic'
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: MyColors.primary,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: MyColors.primary,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),

              SizedBox(height: 20,),

               Container(
                height: 50.0,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                
                child: TextButton(
                  onPressed: () {},
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
                    "Se connecter",
                    style: TextStyle(
                      color: MyColors.white,
                      fontFamily: 'CenturyGothic',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30,),

              Wrap(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "avez Vous oublié vos identifians ?",
                    style: TextStyle(color: MyColors.primary),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      " faites une demande",
                      style: TextStyle(
                        color: MyColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}