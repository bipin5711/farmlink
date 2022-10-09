import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:flutter/material.dart';
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          strFooter1,
          style: TextStyle(
              fontSize: 11, color: colorTextFooter, fontWeight: FontWeight.w500),
        ),
        const Text(
          strFooter2,
          style: TextStyle(
              fontSize: 11, color: colorTextFooter, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
