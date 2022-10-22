import 'package:farmlink/utils/util_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;
  final double borderRadius;
  final double horizontalPadding;
  final double verticalPadding;
  final Color borderColor;

  CustomButton(
      {required this.onPressed,
      this.text = '',
      this.textColor = colorLight,
      this.buttonColor = colorTransparent,
      this.borderRadius = 4.0,
      this.horizontalPadding = 6.0,
      this.verticalPadding = 16.0,
      this.borderColor = colorTransparent});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
                vertical: verticalPadding, horizontal: horizontalPadding))),
        // shape: RoundedRectangleBorder(
        //     side: BorderSide(
        //       color: borderColor,
        //     ),
        //     borderRadius: BorderRadius.circular(borderRadius)),
        // splashColor: colorLight,
        onPressed: onPressed,
        child: Text(text,
            style: TextStyle(
                color: textColor, fontSize: 18, fontWeight: FontWeight.w600)));
  }
}
