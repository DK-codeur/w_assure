import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_assure/screens/login_screen.dart';
import 'package:w_assure/screens/register_screen.dart';
import 'package:w_assure/utils/my_colors.dart';

class WelcomeScreen extends StatefulWidget {

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: SafeArea(
        child: Stack(
          children: [
            
            Container(
              height: MediaQuery.of(context).size.height ,
              child: Image.asset(
                'assets/images/car-int.jpg',
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: MyColors.primary.withOpacity(0.7),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'WMC Assure',
                      style: TextStyle(
                        fontFamily: 'CenturyGothic',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: MyColors.white.withOpacity(0.9)
                      ),
                    ),
                    SizedBox(height: 10,),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée',
                        style: TextStyle(
                          fontFamily: 'CenturyGothic',
                          fontSize: 12,
                          color: MyColors.white.withOpacity(0.7)
                        ),
                      ),
                    ),

                    SizedBox(height: 30,),

                    Container(
                      height: 45.0,
                      width: double.infinity,
                      
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, CupertinoPageRoute(
                              builder: (context) => LoginScreen()
                            )
                          );
                        },
                        style: TextButton.styleFrom(
                          // primary: Colors.white,
                          backgroundColor: MyColors.white.withOpacity(0.9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ), 
                          side: BorderSide(color: MyColors.white, width: 1.4)
                        ),
                        child: Text(
                          "Se connecter",
                          style: TextStyle(
                            color: MyColors.primary,
                            fontFamily: 'CenturyGothic',
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Container(
                      height: 45.0,
                      width: double.infinity,
                      
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, CupertinoPageRoute(
                              builder: (context) => RegisterScreen()
                            )
                          );
                        },
                        style: TextButton.styleFrom(
                          // primary: Colors.white,
                          backgroundColor: MyColors.primary.withOpacity(0.9),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: MyColors.white, width: 1.4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10)
                            )
                          ), 
                        ),
                        child: Text(
                          "S'inscrire",
                          style: TextStyle(
                            color: MyColors.white,
                            fontFamily: 'CenturyGothic',
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}