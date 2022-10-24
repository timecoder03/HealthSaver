import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
class DietCard extends StatelessWidget {


  final String Aurthurname;
  final bool isDone;
  final String url;




  const DietCard({
    Key? key,
    required this.Aurthurname,
    bool this.isDone = false,
    required String this.url,


  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(

        builder: (context, constraint) {
          return  ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Container(
              width: constraint.maxWidth ,
              //padding : EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 17),
                      blurRadius: 20,
                      spreadRadius: -13,
                      color: kShadowColor,
                    ),
                  ]
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap:(){},
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 42,
                          width: 60,
                          decoration: BoxDecoration(
                            color: isDone ? kBlueColor : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: kBlueColor),
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: isDone ? Colors.white :kBlueColor,
                          ),
                        ),
                        SizedBox(
                          width: 16.0 ,
                        ),
                        RichText(
                          text: TextSpan(
                              text: Aurthurname.toUpperCase(),
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                              recognizer: new TapGestureRecognizer()..onTap = (){launchUrl(Uri.parse(url));}
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
    );

  }
}
// "Session $sessionNum", style: Theme.of(context).textTheme.subtitle2,