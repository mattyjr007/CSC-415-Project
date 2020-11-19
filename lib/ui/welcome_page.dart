import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyerpp/ui/register/signup.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:lawyerpp/ui/splash.dart';

class WelcomePage extends StatefulWidget {
  static const String id = 'welcomepage';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context); // calling the attributes of these class to support multiple screen size.
    return Scaffold(

      //Making use of stack to have my container arranged on top each other
      body: Stack(
        children: <Widget>[
          Container(
//              width: SizeConfig.screenWidth ,
//              height: SizeConfig.screenHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg' , ),
                  fit: BoxFit.cover,
                )
            ),
          ),

          Center(
            child: Container(
              height: SizeConfig.screenHeight*0.75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
//                    Container(
//                      //color: Colors.black,
//                      //child: Text('rrrrrrrrrrrr'),
//                    ),

                    Container(
                     //width: SizeConfig.screenWidth * 0.95,
                      //height: 500,
                      //color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Text('Welcome to LAWYERPP' ,
                                //textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22.65,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                  //fontFamily: ,
                                ),
                              ),

                          SizedBox(height: 26,),
                          Text("Don't Panic! Just LAWYERPP" ,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                              //fontFamily: ,
                            ),
                          ),
                          SizedBox(height: 84),

                          Container(
                            width: SizeConfig.screenWidth - 30,
                            child:Column(
                              children: <Widget>[
                                //used a container with a gesture detector for the button to make it responsive with the parent container screen size [get started button]
                               GestureDetector(
                                 onTap: (){
                                   Navigator.pushNamed(context, SignUp.id);
                                 },
                                 child: Container(
                                   width: SizeConfig.screenWidth,
                                   height: 45,
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadius.all(Radius.circular(4)),
                                   ),
                                   child:Center(
                                     child: Text(
                                       'Get Started',
                                       style: TextStyle(
                                         fontWeight: FontWeight.w600,
                                         fontSize: 14,
                                         //fontFamily: ,
                                       ),
                                     ),
                                   ),
                                 ),
                               ),

                                SizedBox(height: 18,),

                                //used a container with a gesture detector for the button to make it responsive with the parent container screen size [sign in button]
                                GestureDetector(
                                  onTap: (){ },
                                  child: Container(
                                    width: SizeConfig.screenWidth,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                      border: Border.all(color: Colors.white , width: 1,)
                                    ),
                                    child:Center(
                                      child: Text(
                                        'Sign in',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.white,
                                          //fontFamily: ,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          )
                        ],
                      ),
                    )
                  ]

              ),
            ),
          ),
        ],
      ),
    );
  }
}
