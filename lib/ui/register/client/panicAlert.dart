import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class PanicAlert extends StatefulWidget {
  static const String id = 'panicAlert';
  @override
  _PanicAlertState createState() => _PanicAlertState();
}

class _PanicAlertState extends State<PanicAlert> {

  /// A [GlobalKey] to hold the form state of my form widget for form validation
  final _formKey = GlobalKey<FormState>();

  /// A [TextEditingController] to control the input text for the user's last name
  TextEditingController _nextKinController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's email
  TextEditingController _emailController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's phone
  TextEditingController _phoneNumberController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's password
  TextEditingController _relationshipController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: SizeConfig.screenWidth,
//            height: SizeConfig.screenHeight,
            child: Column(
              children: <Widget>[
                Container(
                  width: SizeConfig.screenWidth - 30,
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

                      SizedBox(height: 54,),

                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Panic Alerts',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            //fontFamily: ,
                            fontSize:17.75 ,
                            fontWeight:FontWeight.w500 ,
                            color: Color(0xFF1D1D1D,),
                          ),
                        ),
                      ),

                      SizedBox(height: 11.61,),

                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Please provide details of your Next of Kin who\nwill receive Panic Alerts sent by you. You\n"
                              "can always add more Next of Kin or change these\ndetails later in the Settings Menu.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            //fontFamily: ,
                            fontSize:14,
                            fontWeight:FontWeight.w400 ,
                            color: Color(0xFF1C2D55,),
                          ),
                        ),
                      ),

                      SizedBox(height: 34.94,),

                      _buildPanicAlert(),

                      SizedBox(height: 45,),

                      //Submit button
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 45,
                          decoration: BoxDecoration(
                            //inActive
                            color: Color(0xFF1A2C56),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child:Center(
                            child: Text(
                              'Submit',
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
                      SizedBox(height: 23,),

                      //Skip button
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 45,

                          decoration: BoxDecoration(
                            border:Border.all(
                              color:kButtonActive,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(4) , ),
                          ),
                          child:Center(
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: kButtonActive,
                                //fontFamily: ,
                              ),
                            ),
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
      ),
    );
  }

  /// A function that builds the sign up widget
  Widget _buildPanicAlert() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //Next of kin
          Text(
            'Next of kin',
            style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              //fontFamily: ,
            ),
          ),
          SizedBox(height: 6,),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              controller: _nextKinController,
              keyboardType: TextInputType.text,
              validator: (value){
                if(value.isEmpty){
                  return 'Enter next of kin';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                //fontFamily: ,
                color: Color(0xFF1C2D55),
              ),
              decoration:kFieldDecoration.copyWith(
                  hintText: 'E.g. Jackie Onyi Ade-Musa',
                  hintStyle:TextStyle(
                    color:Color(0xFF999999),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  )
              ),
            ),
          ),

          SizedBox(height: 25,),

          //Phone number
          Text(
            'Phone number',
            style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              //fontFamily: ,
            ),
          ),
          SizedBox(height: 6,),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              validator: (value){
                if(value.isEmpty){
                  return 'Enter your first name';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                //fontFamily: ,
                color: Color(0xFF1C2D55),
              ),
              decoration:kFieldDecoration.copyWith(
                hintText: '+234 701 234 5678',
                hintStyle:TextStyle(
                  color:Color(0xFF999999),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                suffix: GestureDetector(
                  onTap: (){},
                  child: Icon(
                    FontAwesomeIcons.timesCircle,
                    size: 14.0,
                    color: Color(0xFF828282),
                  ),
                )
              ),
            ),
          ),

          SizedBox(height: 25,),

          //email
          Text(
            'Email',
            style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              //fontFamily: ,
            ),
          ),
          SizedBox(height: 6,),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.text,
              validator: (value){
                if(value.isEmpty){
                  return 'Enter email';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                //fontFamily: ,
                color: Color(0xFF1C2D55),
              ),
              decoration:kFieldDecoration.copyWith(
                hintText: 'johnbull@lawyerpp.com',
                hintStyle:TextStyle(
                  color:Color(0xFF999999),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                  suffix: GestureDetector(
                    onTap: (){},
                    child: Icon(
                      FontAwesomeIcons.timesCircle,
                      size: 14.0,
                      color: Color(0xFF999999),
                    ),
                  )
              ),
            ),
          ),

          SizedBox(height: 25,),

          //Relationship
          Text(
            'Relationship',
            style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              //fontFamily: ,
            ),
          ),
          SizedBox(height: 6,),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              controller: _relationshipController,
              keyboardType: TextInputType.text,
              validator: (value){
                if(value.isEmpty){
                  return 'Enter relationship';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                //fontFamily: ,
                color: Color(0xFF1C2D55),
              ),
              decoration:kFieldDecoration.copyWith(
                hintText: 'cousin',
                hintStyle:TextStyle(
                  color:Color(0xFF999999),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                  suffix: GestureDetector(
                    onTap: (){},
                    child: Icon(
                      FontAwesomeIcons.timesCircle,
                      size: 14.0,
                      color: Color(0xFF999999),
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
