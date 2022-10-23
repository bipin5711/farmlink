import 'package:farmlink/utils/util_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final bool selected;
  final VoidCallback toggle;
  final Color borderColor;
  final String size;
  const CustomCheckbox(
      {Key? key,
      this.selected = false,
      required this.toggle,
      this.borderColor = colorBackgroundGrey,
      this.size = 'large'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: Container(
        decoration: BoxDecoration(
            color: selected ? colorSecondary : colorLight,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: borderColor)),
        height: size == 'small' ? 19 : 25,
        width: size == 'small' ? 19 : 25,
        child: selected
            ?
            Icon(
                Icons.check,
                color: colorLight,
                size: size == 'small' ? 16 : 22,
              )
            : null,
      ),
    );
  }
}
