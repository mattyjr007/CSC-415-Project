import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignUp extends StatefulWidget {
  static const String id = 'signup';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  /// A [GlobalKey] to hold the form state of my form widget for form validation
  final _formKey = GlobalKey<FormState>();

  /// A [TextEditingController] to control the input text for the user's first name
  TextEditingController _firstNameController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's last name
  TextEditingController _lastNameController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's email
  TextEditingController _emailController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's phone
  TextEditingController _phoneNumberController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's password
  TextEditingController _passwordController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's confirm password
  TextEditingController _confirmPasswordController = new TextEditingController();

  /// A boolean variable to hold whether the password should be shown or hidden
  bool _obscurePassTextLogin = true;

  /// A boolean variable to hold whether the confirm password should be shown or hidden
  bool _obscureConfirmPassTextLogin = true;

  bool accept = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Stack(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Center(
                    child: Column(
                      children: <Widget>[
                        //parent container with maximum width size the children is not meant to pass
                        Container(
                          width: SizeConfig.screenWidth - 30,
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/lawyerpp_logo.png',
                                width: 33.28,
                                height: 35,
                              ),

                              SizedBox(height: 32,),


                              Text(legal,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(

                                  )
                              ),

                              SizedBox(height: 42,),

                              // use a container to wrap the two button[google and linkedln] in a stack
                              Container(
                                width: SizeConfig.screenWidth,
                                child: Stack(
                                  children: <Widget>[
                                    Row(

                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: SizeConfig.screenWidth / 2.4,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                            ),
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center,
                                                children: <Widget>[
                                                  Image.asset(
                                                    'assets/icons/google-icon.png',
                                                    width: 14.23,
                                                    height: 14.56,
                                                  ),
                                                  SizedBox(width: 6.78,),
                                                  Text(
                                                    'Google',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontSize: 13.25,
                                                      //fontFamily: ,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: SizeConfig.screenWidth / 2.4,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF006699),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                            ),
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center,
                                                children: <Widget>[
                                                  Image.asset(
                                                    'assets/icons/linkedln.png',
                                                    width: 14.23,
                                                    height: 14.56,
                                                  ),
                                                  SizedBox(width: 6.78,),
                                                  Text(
                                                    'Linkedln',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontSize: 13.25,
                                                      color: Colors.white,
                                                      //fontFamily: ,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              // this is for the divider line and text
                              Container(
                                child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Divider(
                                            height: 45,
                                            thickness: 1,
                                          )
                                      ),

                                      Text(
                                        "Or",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //fontFamily: ,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      Expanded(
                                          child: Divider(
                                            height: 45,
                                            thickness: 1,
                                          )
                                      ),
                                    ]
                                ),
                              ),
                              SizedBox(height: 22,),
                              _buildSignUp(),

                              SizedBox(height: 45,),

                              //Sign up button
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
                                      'Sign up',
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
                              // alternative sign in link
                              GestureDetector(
                                onTap: () {
                                  //Navigator.pushNamed(context, SignIn.id);
                                },
                                child: Container(
                                  width: SizeConfig.screenWidth - 40,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: 'Already have an account? ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        //fontFamily: "Regular",
                                        color:Color(0xFF999999),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Sign In',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            //fontFamily: "Regular",
                                            color: Color(0xFF1A2C56),
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 80,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }


  /// A function that builds the sign up widget
  Widget _buildSignUp() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //name
          Text(
            'Name',
            style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              //fontFamily: ,
            ),
          ),
          SizedBox(height: 6,),
          //container for both first name and last name
          Container(
            width: SizeConfig.screenWidth,
            child: Stack(
              children: <Widget>[
                //first name text field
                Row(
                  children: <Widget>[
                    Container(
                      //alignment: Alignment.topCenter,
                      width: SizeConfig.screenWidth / 2.4,
                      child:
                      TextFormField(
                        controller: _firstNameController,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value.isEmpty){
                            return 'Enter your first name';
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
                            hintText: 'First Name',
                            hintStyle:TextStyle(
                              color:Color(0xFF8B9EB4),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                // last name text field
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      //alignment: Alignment.topCenter,
                      width: SizeConfig.screenWidth / 2.4,
                      child:
                      TextFormField(
                        controller: _lastNameController,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value.isEmpty){
                            return 'Enter your last name';
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
                            hintText: 'Last Name',
                            hintStyle:TextStyle(
                              color:Color(0xFF8B9EB4),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ),
                    ),
                  ],
                )


              ],
            ),
          ),

          SizedBox(height: 26,),

          //Email
          Text(
            'Email Address',
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
                  return 'Enter your first name';
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
                  hintText: 'johnbull@lawyerpp.com',
                  hintStyle:TextStyle(
                    color:Color(0xFF8B9EB4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )
              ),
            ),
          ),

          SizedBox(height: 26,),

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
                fontSize: 12,
                fontWeight: FontWeight.w400,
                //fontFamily: ,
                color: Color(0xFF1C2D55),
              ),
              decoration:kFieldDecoration.copyWith(
                  hintText: '+234 701 234 5678',
                  hintStyle:TextStyle(
                    color:Color(0xFF8B9EB4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )
              ),
            ),
          ),

          SizedBox(height: 26,),

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
          SizedBox(height: 6,),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              obscureText: _obscurePassTextLogin,
              controller: _passwordController,
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
                  onTap: _togglePassLogin,
                  child: Icon(
                    _obscurePassTextLogin ? FontAwesomeIcons.eyeSlash
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
            child: TextFormField(
              obscureText: _obscureConfirmPassTextLogin,
              controller: _confirmPasswordController,
              keyboardType: TextInputType.text,
              validator: (value){
                if(value.isEmpty){
                  return 'Confirm your password';
                }
                if (_confirmPasswordController.text != _passwordController.text) {
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
                      _obscureConfirmPassTextLogin ? FontAwesomeIcons.eyeSlash
                          : FontAwesomeIcons.eye,
                      size: 16.0,
                      color: Color(0xFF828282),
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
    }

  /// A function to toggle if to show the password or not by
  /// changing [_obscureTextLogin] value
  void _togglePassLogin() {
    setState(() {
      _obscurePassTextLogin = !_obscurePassTextLogin;
    });
  }

  /// A function to toggle if to show the password or not by
  /// changing [_obscureTextLogin] value
  void _toggleConfirmPassLogin() {
    setState(() {
      _obscureConfirmPassTextLogin = !_obscureConfirmPassTextLogin;
    });
  }


}