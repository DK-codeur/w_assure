import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_assure/screens/add_new.dart';
import 'package:w_assure/utils/my_colors.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height/6,
              color: MyColors.primary,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Bonjour !',
                              style: TextStyle(
                                fontFamily: 'CenturyGothic',
                                fontSize: 16.2,
                                color: MyColors.white.withOpacity(0.9)
                              ),
                            ),
                            
                            Text(
                              'Jule Koffi',
                              style: TextStyle(
                                fontFamily: 'CenturyGothic',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: MyColors.white.withOpacity(0.8)
                              ),
                            ),
                          ],
                        ),

                        CircleAvatar(
                          radius: 25,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context, CupertinoPageRoute(
                                  builder: (context) => AddNew()
                                )
                              );
                            },
                            tooltip: 'Nouvel incident',
                            icon: Icon(
                              Icons.add_a_photo_outlined
                            ),
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 15,),

                    Divider(color: MyColors.white.withOpacity(0.5),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 8.0
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Type d'assu.",
                                style: TextStyle(
                                  fontFamily: 'CenturyGothic',
                                  color: MyColors.white,
                                  fontSize: 14
                                ),
                              ),

                              Text(
                                'Auto',
                                style: TextStyle(
                                  fontFamily: 'CenturyGothic',
                                  color: MyColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13
                                ),
                              )
                            ],
                          ),
                        ),

                        Text(
                          "|",
                          style: TextStyle(
                            color: MyColors.white,
                            fontSize: 24
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 8.0
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Incidents',
                                style: TextStyle(
                                  fontFamily: 'CenturyGothic',
                                  color: MyColors.white,
                                  fontSize: 14
                                ),
                              ),

                              Text(
                                '0',
                                style: TextStyle(
                                  fontFamily: 'CenturyGothic',
                                  color: MyColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13
                                ),
                              )
                            ],
                          ),
                        ),


                        Text(
                          "|",
                          style: TextStyle(
                            color: MyColors.white,
                            fontSize: 24
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 8.0
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Inci. récent',
                                style: TextStyle(
                                  fontFamily: 'CenturyGothic',
                                  color: MyColors.white,
                                  fontSize: 14
                                ),
                              ),

                              Text(
                                '19/03/2021',
                                style: TextStyle(
                                  fontFamily: 'CenturyGothic',
                                  color: MyColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    Divider(color: MyColors.white.withOpacity(0.5),),

                    SizedBox(height: 15,),

                  ],
                ),
              ),
            ),//end color


            Expanded(
              child: Container(
                color: MyColors.primary.withOpacity(0.06),
                child: ListView(
                  children: [
                    buildItem(Icons.access_time_sharp, Colors.pink),
                    buildItem(Icons.access_time_sharp, Colors.pink),
                    buildItem(Icons.verified, Colors.green),
                    buildItem(Icons.access_time_sharp, Colors.pink),
                    buildItem(Icons.access_time_sharp, Colors.pink),
                    buildItem(Icons.verified, Colors.green),
                    buildItem(Icons.verified, Colors.green),
                    buildItem(Icons.verified, Colors.green),
                  ],
                ),
              ),
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Icon(
              //       Icons.image_not_supported_outlined,
              //       color: Colors.grey,
              //       size: 100,
              //     ),

              //     Text(
              //       "Pas d'incident enegistré",
              //       style: TextStyle(
              //         fontFamily: 'CenturyGothic',
              //         color: Colors.grey,
              //       ),
              //     )
              //   ],
              // )
            )
          ],
        ),
      ),
    );
  }

  Container buildItem(IconData icon, Color color) {
    return Container(
      height: 120,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          children: [
            Container(
              width: 140,
              height: 120,
              child: Image.asset(
                'assets/images/car-int.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        // size: 15,
                      ),
                      Text(
                        ' Marcory, residentiel',
                        style: TextStyle(
                          fontFamily: 'CenturyGothic'
                        ),
                      ),

                      SizedBox(width: 15,),

                      Icon(
                        icon,
                        color: color,
                        size: 17,
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        // size: 15,
                      ),
                      Text(
                        ' Moussa Tidiane',
                        style: TextStyle(
                          fontFamily: 'CenturyGothic'
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Icon(
                        Icons.time_to_leave_outlined,
                        // size: 15,
                      ),
                      Text(
                        ' 2415 HB 01 CI',
                        style: TextStyle(
                          fontFamily: 'CenturyGothic'
                        ),
                      ),

                      
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}