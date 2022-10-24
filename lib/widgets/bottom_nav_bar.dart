import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : EdgeInsets.symmetric(horizontal: 20, vertical:  10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavigation(title: "Today", svgScr: "assest/icons/calendar.svg",press: (){}, isActive: false,),
          BottomNavigation(title: "All Exercise", svgScr: "assest/icons/gym.svg",press: (){}, isActive: true,),
          BottomNavigation(title: "Settings", svgScr: "assest/icons/Settings.svg",press: (){}, isActive: false,)
        ],
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;


  const BottomNavigation({
    Key? key,
    required this.svgScr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgScr, color: isActive? kActiveIconColor : kTextColor,),
          Text(title, style: TextStyle(
            color: isActive? kActiveIconColor : kTextColor,
          ),),
        ],

      ),
    );
  }
}

