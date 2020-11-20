import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFFE5E5E5);
const kButtonActive = Color(0xFF1A2C56);
const kButtonInActive = Color(0xFFD3E0EA);


 const legal =  ' Get legal assistance in a second and \n keep track of your matter in real time. \n Stay safe with LAWYERPP.';

 const kFieldDecoration = InputDecoration(
  border:InputBorder.none,
  filled: true,
  fillColor: Colors.white,
 );

const kPinFieldDecoration = InputDecoration(
 counterText: '',
 enabledBorder: UnderlineInputBorder(
  borderSide: BorderSide(width: 1, color: Color(0xFFA4A4A4)),
  //borderRadius: BorderRadius.all(Radius.circular(4.0)),
 ),
 focusedBorder: UnderlineInputBorder(
  borderSide: BorderSide(width: 1, color: Color(0xFF1C2D55)),
  //borderRadius: BorderRadius.all(Radius.circular(4.0)),
 ),
);

const kPinTextStyle = TextStyle(
 color: Color(0xFF0000005),
 fontSize: 25,
 //fontFamily: "Bold",
);