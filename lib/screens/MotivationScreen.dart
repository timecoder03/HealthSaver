import 'dart:io';


import 'package:dailly_exerciseapp/widgets/bottom_nav_bar.dart';
import 'package:dailly_exerciseapp/widgets/searchbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';



import '../constants.dart';
import 'Motivation_card.dart';

class MotivationScreen extends StatelessWidget {
  const MotivationScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;



    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Colors.amberAccent,

            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text("MOTIVATION",
                      style: Theme.of(context).textTheme.headline4?.copyWith(fontWeight: FontWeight.w900),),
                    SizedBox(height: 10,),
                    Text("by Ayush Gadpayle",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                        width: size.width * .6,
                        child:
                        Text("Just one small positive thought in the morning can change your whole day.", style: TextStyle(fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),)),
                    SizedBox(
                        width: size.width * 0.5,
                        child: SearchBar()),
                    Wrap(
                      spacing:20 ,
                      runSpacing: 20,
                      children: [
                        MotivationCard(sessionNum: "Motiversity", isDone: true,url: 'https://www.youtube.com/c/motiversity/videos',),
                        MotivationCard(sessionNum: "Motivation Ark ", isDone: false, url: 'https://www.youtube.com/c/MotivationArk/videos',),
                        MotivationCard(sessionNum: "MotivationHub ", isDone: false,url: 'https://www.youtube.com/c/MotivationHubOfficial/videos',),
                        MotivationCard(sessionNum: "Ben Lionel Scott", isDone: false,url: 'https://www.youtube.com/c/BenLionelScott/videos',),

                      ],
                    ),
                    SizedBox(height:  20,),
                    Text(
                      "Advanced Meditation Sessions",
                      style: Theme.of(context).textTheme.headline6 ?. copyWith(fontWeight: FontWeight.bold),

                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: kShadowColor,
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("assest/icons/Meditation_women_small.svg"),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "To Enlock the Sessions",
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Text(
                                    "Email me at gadpayleayush54@gmail.com"
                                )
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10), child: SvgPicture.asset("assest/icons/Lock.svg"),)
                        ],

                      ),

                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/*press(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  }
}*/
