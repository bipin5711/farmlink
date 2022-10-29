import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final Color textColor;

  Footer({
    this.textColor = colorTextFooter,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          strFooter1,
          style: TextStyle(
              fontSize: 10, color: textColor, fontWeight: FontWeight.w500),
        ),
        Text(
          strFooter2,
          style: TextStyle(
              fontSize: 10, color: textColor, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
