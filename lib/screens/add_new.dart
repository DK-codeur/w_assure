import 'dart:io';

import 'package:flutter/material.dart';
import 'package:w_assure/screens/home_screen.dart';
import 'package:w_assure/utils/my_colors.dart';

class AddNew extends StatefulWidget {

  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {



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
                    'Nouvel Incident !',
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: MyColors.white.withOpacity(0.9)
                    ),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    'Remplissez ce formulaire pour ajouter un nouvel incident',
                    style: TextStyle(
                      fontFamily: 'CenturyGothic',
                      fontSize: 14,
                      color: MyColors.white.withOpacity(0.8)
                    ),
                  ),
                ],
              ),
            ),
          ),//end color

          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Quelque images de la scene',
                style: TextStyle(
                  fontFamily: 'CenturyGothic'
                ),
              ),
            ),
          ),

          Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6.0,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.photo_camera,
                                    color: MyColors.primary,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                  },
                                ),
                              ),

                              Container(
                                alignment: Alignment.center,
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6.0,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.photo_camera,
                                    color: MyColors.primary,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                  },
                                ),
                              ),

                              Container(
                                alignment: Alignment.center,
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6.0,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.photo_camera,
                                    color: MyColors.primary,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                  },
                                ),
                              )
                          ],
                        ),
                      ),


                      _buildTextFormField("Nom de la personne accidentée", Icons.person_outline) ,
                      _buildTextFormField("Immatriculation", Icons.time_to_leave_outlined) ,
                      _buildTextFormField("Lieu", Icons.location_on_outlined) ,

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