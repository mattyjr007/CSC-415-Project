import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawyerpp/ui/register/login.dart';

class SignUp extends StatefulWidget {

  static const String id = 'sign_up_page';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  /// A [GlobalKey] to hold the form state of my form widget for form validation
  final _formKey = GlobalKey<FormState>();

  /// A [TextEditingController] to control the input text for the user's first name
  TextEditingController _firstNameController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's last name
  TextEditingController _lastNameController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's email
  TextEditingController _emailController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's phone
  TextEditingController _phoneNumberController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's password
  TextEditingController _passwordController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's confirm password
  TextEditingController _confirmPasswordController = TextEditingController();

  /// A boolean variable to hold whether the password should be shown or hidden
  bool _obscurePassTextLogin = true;

  /// A boolean variable to hold whether the confirm password should be shown or hidden
  bool _obscureConfirmPassTextLogin = true;

  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          padding: EdgeInsets.only(top: 66, left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/lawyerpp_logo.png',
                  width: 33.28,
                  height: 35,
                ),
                SizedBox(height: 32),
                Text(
                    legal,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF1D1D1D),
                        fontFamily: 'Raleway'
                    )
                ),
                SizedBox(height: 42),
                Container(
                  width: SizeConfig.screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: SizeConfig.screenWidth / 2.4,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons/google-icon.png',
                                  width: 14.23,
                                  height: 14.56,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: 6.78),
                                Text(
                                  'Google',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.25,
                                    fontFamily: 'Raleway',
                                    color: Color(0xFF999999),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: SizeConfig.screenWidth / 2.4,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xFF006699),
                            borderRadius:
                            BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons/linkedln.png',
                                  width: 14.23,
                                  height: 14.56,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: 6.78),
                                Text(
                                  'Linkedln',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.25,
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    //fontFamily: ,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Container(
                  width: SizeConfig.screenWidth,
                  child: Row(
                    children: [
                      Container(
                        width: (SizeConfig.screenWidth / 2) - 22,
                        height: 1,
                        color: Colors.black.withOpacity(0.1),
                      ),
                      Container(
                        width: 14,
                        child: Text(
                          "Or",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF999999)
                          ),
                        ),
                      ),
                      Container(
                        width: (SizeConfig.screenWidth / 2) - 22,
                        height: 1,
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22),
                _buildSignUp(),
                SizedBox(height: 45),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: 45,
                    decoration: BoxDecoration(
                      //inActive
                      color: Color(0xFFD3E0EA),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Raleway',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 23),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Login.id);
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
                          fontFamily: 'Raleway',
                          color: Color(0xFF999999),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Raleway',
                              color: Color(0xFF1A2C56),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80),
              ],
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
          Text(
            'Name',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'Raleway',
            ),
          ),
          SizedBox(height: 6),
          Container(
            width: SizeConfig.screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: SizeConfig.screenWidth / 2.4,
                  child: TextFormField(
                    controller: _firstNameController,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter your first name';
                      }
                      return null;
                    },
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Raleway',
                      color: Color(0xFF1C2D55),
                    ),
                    decoration: kFieldDecoration.copyWith(
                        hintText: 'First Name',
                        hintStyle: TextStyle(
                          color: Color(0xFF8B9EB4),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Raleway',
                        )
                    ),
                  ),
                ),
                Container(
                  width: SizeConfig.screenWidth / 2.4,
                  child: TextFormField(
                    controller: _lastNameController,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter your last name';
                      }
                      return null;
                    },
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Raleway',
                      color: Color(0xFF1C2D55),
                    ),
                    decoration: kFieldDecoration.copyWith(
                      hintText: 'Last Name',
                      hintStyle: TextStyle(
                        color: Color(0xFF8B9EB4),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Raleway',
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26),
          Text(
            'Email Address',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'Raleway',
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Enter your first name';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway',
                color: Color(0xFF1C2D55),
              ),
              decoration: kFieldDecoration.copyWith(
                hintText: 'johnbull@lawyerpp.com',
                hintStyle: TextStyle(
                  color: Color(0xFF8B9EB4),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Raleway',
                )
              ),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Text(
            'Phone number',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'Raleway',
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Enter your first name';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway',
                color: Color(0xFF1C2D55),
              ),
              decoration: kFieldDecoration.copyWith(
                hintText: '+234 701 234 5678',
                hintStyle: TextStyle(
                  color: Color(0xFF8B9EB4),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Raleway'
                )
              ),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Text(
            'Password',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'Raleway',
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: SizeConfig.screenWidth,
            height: 45,
            child: TextFormField(
              obscureText: _obscurePassTextLogin,
              controller: _passwordController,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Enter your password';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway',
                color: Color(0xFF1C2D55),
              ),
              decoration: kFieldDecoration.copyWith(
                  suffixIcon: GestureDetector(
                    onTap: _togglePassLogin,
                    child: Icon(
                      _obscurePassTextLogin
                          ? FontAwesomeIcons.eyeSlash
                          : FontAwesomeIcons.eye,
                      size: 16.0,
                      color: Color(0xFF828282),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Text(
            'Confirm Password',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'Raleway',
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              obscureText: _obscureConfirmPassTextLogin,
              controller: _confirmPasswordController,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Confirm your password';
                }
                if (_confirmPasswordController.text !=
                    _passwordController.text) {
                  return 'Password Mismatch';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway',
                color: Color(0xFF1C2D55),
              ),
              decoration: kFieldDecoration.copyWith(
                  suffixIcon: GestureDetector(
                    onTap: _toggleConfirmPassLogin,
                    child: Icon(
                      _obscureConfirmPassTextLogin
                          ? FontAwesomeIcons.eyeSlash
                          : FontAwesomeIcons.eye,
                      size: 16.0,
                      color: Color(0xFF828282),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  /// A function to toggle if to show the password or not by
  /// changing [_obscurePassTextLogin] value
  void _togglePassLogin() {
    setState(() {
      _obscurePassTextLogin = !_obscurePassTextLogin;
    });
  }

  /// A function to toggle if to show the password or not by
  /// changing [_obscureConfirmPassTextLogin] value
  void _toggleConfirmPassLogin() {
    setState(() {
      _obscureConfirmPassTextLogin = !_obscureConfirmPassTextLogin;
    });
  }

}
