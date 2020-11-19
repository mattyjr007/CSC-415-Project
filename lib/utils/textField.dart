import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myTextFormField extends StatelessWidget {
  final String hintText;
  final bool isEmail;

  final bool isPassword;
  final bool isConfirmPassword;

  myTextFormField({this.hintText ,this.isEmail, this.isPassword ,this.isConfirmPassword});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
