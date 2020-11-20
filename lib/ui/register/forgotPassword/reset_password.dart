import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResetPassword extends StatefulWidget {
  static const String id = 'resetPassword';
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  /// A [GlobalKey] to hold the form state of my form widget for form validation
  final _formKey = GlobalKey<FormState>();

  /// A [TextEditingController] to control the input text for the user's password
  TextEditingController _resetPasswordController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's confirm password
  TextEditingController _resetConfirmPasswordController = new TextEditingController();

  /// A boolean variable to hold whether the password should be shown or hidden
  bool _obscurePassTextReset = true;

  /// A boolean variable to hold whether the confirm password should be shown or hidden
  bool _obscureConfirmPassTextReset = true;


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
                  width: SizeConfig.screenWidth - 28,
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
                          'Create New Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            //fontFamily: ,
                            fontSize:17.75 ,
                            fontWeight:FontWeight.w500 ,
                            color: Color(0xFF1D1D1D,),
                          ),
                        ),
                      ),

                      SizedBox(height: 26,),

                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Please enter your new password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            //fontFamily: ,
                            fontSize:14 ,
                            fontWeight:FontWeight.w500 ,
                            color: Color(0xFF1C2D55,),
                          ),
                        ),
                      ),

                      SizedBox(height: 40,),

                      _buildResetPassword(),

                      SizedBox(height: 45,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 45,
                          decoration: BoxDecoration(
                            //inActive
                            color: Color(0xFFD3E0EA),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child:Center(
                            child: Text(
                              'Done',
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
  Widget _buildResetPassword() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //password
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //password
              Text(
                'Password',
                style:TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black,
                  //fontFamily: ,
                ),
              ),
      ]
    ),

          SizedBox(height: 6,),

          Container(
            width: SizeConfig.screenWidth,
            height: 45,
            child: TextFormField(
              obscureText:  _obscurePassTextReset,
              controller: _resetPasswordController,
              keyboardType: TextInputType.text,
              validator: (value){
                if(value.isEmpty){
                  return 'Enter your password';
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
                //hintText: 'Password',
                  hintStyle:TextStyle(
                    color:Color(0xFF8B9EB4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: _toggleLogin,
                    child: Icon(
                      _obscurePassTextReset ? FontAwesomeIcons.eyeSlash
                          : FontAwesomeIcons.eye,
                      size: 16.0,
                      color: Color(0xFF828282),
                    ),
                  )
              ),


            ),
          ),

              SizedBox(height: 26,),

              //Confirm password
              Text(
                'Confirm Password',
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
                height: 45,
                child: TextFormField(
                  obscureText: _obscureConfirmPassTextReset,
                  controller: _resetConfirmPasswordController,
                  keyboardType: TextInputType.text,
                  validator: (value){
                    if(value.isEmpty){
                      return 'Confirm your password';
                    }
                    if (_resetConfirmPasswordController.text != _resetPasswordController.text) {
                      return 'Password Mismatch';
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
                    //hintText: 'Confirm Password',
                      hintStyle:TextStyle(
                        color:Color(0xFF8B9EB4),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: _toggleConfirmPassLogin,
                        child: Icon(
                          _obscureConfirmPassTextReset ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
                          size: 16.0,
                          color: Color(0xFF828282),
                        ),
                      )
                  ),
                ),
              ),

      ]
    ),

      );

  }

  /// A function to toggle if to show the password or not by
  /// changing [_obscurePassTextReset] value
  void _toggleLogin() {
    setState(() {
      _obscurePassTextReset = !_obscurePassTextReset;
    });
  }

  /// A function to toggle if to show the password or not by
  /// changing [ _obscureConfirmPassTextReset] value
  void _toggleConfirmPassLogin() {
    setState(() {
      _obscureConfirmPassTextReset = ! _obscureConfirmPassTextReset;
    });
  }

}
