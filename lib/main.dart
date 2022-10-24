import 'package:dailly_exerciseapp/screens/DietScreen.dart';
import 'package:dailly_exerciseapp/screens/ExerciseScreen.dart';
import 'package:dailly_exerciseapp/screens/MotivationScreen.dart';
import 'package:dailly_exerciseapp/screens/details_screen.dart';
import 'package:dailly_exerciseapp/widgets/bottom_nav_bar.dart';
import 'package:dailly_exerciseapp/widgets/category_card.dart';
import 'package:dailly_exerciseapp/widgets/searchbar.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor)
      ),
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // gives us height and width of our device

    return Scaffold(

      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
          height: size.height * 0.45, // height of our container is 45% of the height of device
          decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assest/images/undraw_pilates_gpdb.png"))
          ),
        ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment : Alignment.topRight,
                  child: Container(
                    height: 52,
                    width: 52,
                    decoration:
                    BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  "Good Morning",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                SearchBar(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      CategoryCard(title: "Diet Recommendation", svgSrc: "assest/icons/Hamburger.svg", press: (){Navigator.push(context, MaterialPageRoute(builder: (context) {return DietScreen();}));},),
                      CategoryCard(title: "Exercises", svgSrc: "assest/icons/Excrecises.svg", press: (){Navigator.push(context, MaterialPageRoute(builder: (context) {return ExerciseScreen();}));}),
                      CategoryCard(title: "Meditation", svgSrc: "assest/icons/Meditation.svg", press: (){Navigator.push(context, MaterialPageRoute(builder: (context) {return DetailsScreen();}),);}),
                      CategoryCard(title: "Motivation", svgSrc: "assest/icons/yoga.svg", press: (){Navigator.push(context, MaterialPageRoute(builder: (context) {return MotivationScreen();}));}),

                    ],
                  ),
                )

              ],
            ),
          )
        ],

      ),
    );
  }
}



