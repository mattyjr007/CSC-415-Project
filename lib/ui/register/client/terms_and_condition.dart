import'package:flutter/material.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TermsAndC extends StatefulWidget {
  static const String id = 'termsCon';
  @override
  _TermsAndCState createState() => _TermsAndCState();
}

class _TermsAndCState extends State<TermsAndC> {

  bool _privacySelected = false;
  bool _termsSelected = false;
  String _textChange;
  dynamic color = kButtonInActive;
  dynamic color2 = kButtonActive;


  void changeColor(){
    _privacySelected = true;
    setState(() {
      if (_privacySelected == true)
      {
        color = kButtonActive;
        color2 = kButtonInActive;
      }
    });
  }

  void changeColor2(){
    _termsSelected = true;
    setState(() {
      if (_privacySelected == true)
      {
        color = kButtonInActive;
        color2 = kButtonActive;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            child: Column(
              children: <Widget>[
                Container(
                  width: SizeConfig.screenWidth-30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topRight,
//                      width: 15,
//                      height: 15,
                        child: GestureDetector(
                          onTap: (){},
                          child: Icon(
                            FontAwesomeIcons.times,
                            // size: 16,
                            color: Color(0xFF999999),
                          ),
                        ),
                      ),

                      SizedBox(height: 45,),
                      //Divider(height: 20, color: Colors.black,),
           
                      // terms and condition button wrapped in a container
                      Container(
                        width: SizeConfig.screenWidth,
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap:(){changeColor2();},
                                child: Text(
                                  "Terms of Use",
                                  style: TextStyle(
                                    //fontFamily: ,
                                    color: color2,
                                    fontSize: 17.75,
                                    fontWeight:FontWeight.w700,
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                width: 20,
                                thickness: 1,
                                color: Colors.black,
                              ),

                              GestureDetector(
                                onTap:(){changeColor();},
                                child: Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                    //fontFamily: ,
                                    color: color,
                                    fontSize: 17.75,
                                    fontWeight:FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
