import 'dart:io';

import 'package:dailly_exerciseapp/screens/sessionalcard.dart';
import 'package:dailly_exerciseapp/widgets/bottom_nav_bar.dart';
import 'package:dailly_exerciseapp/widgets/searchbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



import '../constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);


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
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assest/icons/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              )
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
                    Text("MEDITATION",
                    style: Theme.of(context).textTheme.headline4?.copyWith(fontWeight: FontWeight.w900),),
                    SizedBox(height: 10,),
                    Text("3-10 MIN Course",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6,
                        child:
                        Text("Live happier and healthier by learning the fundamentals of meditation and mindfulness")),
                    SizedBox(
                      width: size.width * 0.5,
                        child: SearchBar()),
                    Wrap(
                      spacing:20 ,
                      runSpacing: 20,
                      children:  [
                        MotivationCard(sessionNum: 1, isDone: true, url: 'https://www.youtube.com/watch?v=jttcWa7tS38&list=PL7by6RYPG3HDc04dtETBExwyl_az6iWoY',),
                        MotivationCard(sessionNum: 2, url: 'https://youtu.be/K6ngPRS5qVo',),
                        MotivationCard(sessionNum: 3, isDone: false,url: 'https://youtu.be/zSkFFW--Ma0',),
                        MotivationCard(sessionNum: 4, isDone: false,url: 'https://www.youtube.com/watch?v=O-6f5wQXSu8&list=PLQiGxGHwiuD1kdxsWKFuhE0rITIXe-7yC&ab_channel=Goodful',),
                        MotivationCard(sessionNum: 5, isDone: false,url: 'https://youtu.be/W8a3T8pI9Ns',),
                        MotivationCard(sessionNum: 6, isDone: false,url: 'https://youtu.be/d4S4twjeWTs',),
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
