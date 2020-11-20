import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPassword extends StatefulWidget {
  static const String id = 'forgotPassword';
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  /// Text Editing Controller and focus nodes for the pin input
  TextEditingController _one = TextEditingController();
  TextEditingController _two = TextEditingController();
  TextEditingController _three = TextEditingController();
  TextEditingController _four = TextEditingController();
  FocusNode _oneFocus = FocusNode();
  FocusNode _twoFocus = FocusNode();
  FocusNode _threeFocus = FocusNode();
  FocusNode _fourFocus = FocusNode();

  /// Boolean variable to hide pin or not
  bool _obscurePin = false;

  /// Map to hold each number for transaction pin
  Map<int, String> _pin = {
    0: '', 1: '', 2: '', 3: '',
    4: '', 5: '', 6: '', 7: ''
  };



  /// A string variable to hold your 4 digit transaction pin
  String _transactionPin = '';

  /// A string variable to hold user [email]
  String email = '';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
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
                          'Check Your Mail',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            //fontFamily: ,
                            fontSize:17.75 ,
                            fontWeight:FontWeight.w400 ,
                            color: Color(0xFF1D1D1D,),
                          ),
                        ),
                      ),

                      SizedBox(height: 27,),

                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Enter the verification code sent to\n(m*******l@gmail.com)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            //fontFamily: ,
                            fontSize:14,
                            fontWeight:FontWeight.w400 ,
                            color: Color(0xFF1C2D55,),
                          ),
                        ),
                      ),

                      SizedBox(height: 119,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: 70,
                            height: 56,
                            child: TextFormField(
                              style: kPinTextStyle,
                              keyboardType: TextInputType.number,
                              focusNode: _oneFocus,
                              controller: _one,
                              textAlign: TextAlign.center,
                              obscureText: _obscurePin,
                              maxLength: 1,
                              onChanged: (value){
                                if(!mounted) return;
                                setState(() {
                                  _pin[0] = value;
                                });
                              },
                              decoration: kPinFieldDecoration,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 70,
                            height: 56,
                            child: TextFormField(
                              style: kPinTextStyle,
                              keyboardType: TextInputType.number,
                              focusNode: _twoFocus,
                              controller: _two,
                              textAlign: TextAlign.center,
                              obscureText: _obscurePin,
                              maxLength: 1,
                              onChanged: (value){
                                if(!mounted) return;
                                setState(() {
                                  _pin[1] = value;
                                });
                              },
                              decoration: kPinFieldDecoration,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 70,
                            height: 56,
                            child: TextFormField(
                              style: kPinTextStyle,
                              keyboardType: TextInputType.number,
                              focusNode: _threeFocus,
                              controller: _three,
                              textAlign: TextAlign.center,
                              obscureText: _obscurePin,
                              maxLength: 1,
                              onChanged: (value){
                                if(!mounted) return;
                                setState(() {
                                  _pin[2] = value;
                                });
                              },
                              decoration: kPinFieldDecoration,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 70,
                            height: 56,
                            child: TextFormField(
                              style: kPinTextStyle,
                              keyboardType: TextInputType.number,
                              focusNode: _fourFocus,
                              controller: _four,
                              textAlign: TextAlign.center,
                              obscureText: _obscurePin,
                              maxLength: 1,
                              onChanged: (value){
                                if(!mounted) return;
                                setState(() {
                                  _pin[3] = value;
                                });
                              },
                              decoration: kPinFieldDecoration,
                            ),
                          ),
                        ],
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

  /// Function to reset all the pin input controllers
  void _resetControllers(){
    _four.clear();
    _three.clear();
    _two.clear();
    _one.clear();
  }
}
