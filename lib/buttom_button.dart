import 'package:flutter/material.dart';
import 'constant.dart';

class ButtomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  ButtomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
          child: Center(
              child: Text(
            buttonTitle,
            style: klargeButtonText,
          )),
          onTap: onTap),
      margin: EdgeInsets.only(top: 10.0),
      height: kbottomHeight,
      width: double.infinity,
      color: kbottomColor,
    );
  }
}