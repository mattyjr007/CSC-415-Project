import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({ @required this.onPressed });

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white
      ),
      child: RawMaterialButton(
        elevation: 0.0,
        child: Center(
          child: Image.asset(
            'assets/icons/arrow.png',
            height: 14.43,
            width: 17.31,
            fit: BoxFit.contain,
          ),
        ),
        onPressed: onPressed,
        constraints: BoxConstraints.tightFor(
          width: 45.0,
          height: 45.0,
        ),
        shape: CircleBorder(),
      ),
    );
  }

}

class PracticeContainer extends StatelessWidget {

  PracticeContainer({ @required this.title, @required this.onPressed });

  final String title;

  final bool onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth,
      height: 45,
      decoration: BoxDecoration(
        color: onPressed ? Color(0xFFD3E0EA) : Color(0xFFF8F8F8),
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 14,
              color: Color(0xFF999999),
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(
            onPressed ? Icons.check : Icons.add,
            color: Color(0xFF999999),
            size: 12,
          ),
        ],
      ),
    );
  }
}
