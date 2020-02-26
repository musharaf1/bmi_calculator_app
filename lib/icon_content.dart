import 'package:flutter/material.dart';

import 'constant.dart';


class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent({this.label, this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
        ),
        SizedBox(height: 15.0),
        Text(
          // 'MALE',
          label,
          style: klabelsTextStyle,
        )
      ],
    );
  }
}
