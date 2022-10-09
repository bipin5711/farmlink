// ignore_for_file: unnecessary_null_comparison

import 'package:farmlink/utils/util_colors.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final TextEditingController textController;
  final TextInputType textInputType;
  final Color labelColor;
  final double height;
  final String labelText;
  final bool obscureText;
  final TextInputAction textInputAction;
  final Color borderColor;
  final Color underlineColor;
  final Color fillColor;
  final Color inputColor;
  final EdgeInsets margin;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final bool floatLabel;
  final bool showLabel;
  final int maxLines;

  CustomInput({
    required this.textController,
    this.height = 48,
    this.labelText = "",
    this.labelColor = colorInputSecondary,
    this.inputColor = colorInputPrimary,
    this.underlineColor = colorTransparent,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.borderColor = colorTransparent,
    this.fillColor = colorLight,
    this.margin = EdgeInsets.zero,
    this.prefixIcon = '',
    this.suffixIcon = '',
    this.floatLabel = false,
    this.showLabel = false,
    this.maxLines = 1,
  });

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.showLabel
            ? Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  widget.labelText,
                  style: TextStyle(
                      color: widget.labelColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              )
            : SizedBox(),
        Container(
          height: widget.height,
          margin: widget.margin,
          child: TextFormField(
            autofocus: false,
            obscureText: widget.obscureText,
            controller: widget.textController,
            keyboardType: widget.textInputType,
            textInputAction: widget.textInputAction,
            cursorColor: widget.inputColor,
            cursorWidth: 1,
            maxLines: widget.maxLines,
            style: TextStyle(
                fontSize: 15,
                color: widget.inputColor,
                fontWeight: FontWeight.w500),
            decoration: widget.prefixIcon != '' && widget.suffixIcon != ''
                ? CustomInputDecorationWithPrefixAndSuffix()
                : widget.prefixIcon != ''
                    ? CustomInputDecorationWithPrefix()
                    : widget.suffixIcon != ''
                        ? CustomInputDecorationWithSuffix()
                        : CustomInputDecoration(),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  InputDecoration CustomInputDecorationWithPrefixAndSuffix() {
    return InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        fillColor: widget.fillColor,
        filled: true,
        floatingLabelBehavior: widget.floatLabel
            ? FloatingLabelBehavior.auto
            : FloatingLabelBehavior.never,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: widget.underlineColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        labelStyle: TextStyle(
            color: widget.labelColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal),
        labelText: widget.labelText);
  }

  // ignore: non_constant_identifier_names
  InputDecoration CustomInputDecorationWithPrefix() {
    return InputDecoration(
        prefixIcon: widget.prefixIcon,
        fillColor: widget.fillColor,
        filled: true,
        floatingLabelBehavior: widget.floatLabel
            ? FloatingLabelBehavior.auto
            : FloatingLabelBehavior.never,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: widget.underlineColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        labelStyle: TextStyle(
            color: widget.labelColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal),
        labelText: widget.labelText);
  }

  // ignore: non_constant_identifier_names
  InputDecoration CustomInputDecorationWithSuffix() {
    return InputDecoration(
        suffixIcon: widget.suffixIcon,
        fillColor: widget.fillColor,
        filled: true,
        floatingLabelBehavior: widget.floatLabel
            ? FloatingLabelBehavior.auto
            : FloatingLabelBehavior.never,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: widget.underlineColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        labelStyle: TextStyle(
            color: widget.labelColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal),
        labelText: widget.labelText);
  }

  // ignore: non_constant_identifier_names
  InputDecoration CustomInputDecoration() {
    return InputDecoration(
        fillColor: widget.fillColor,
        filled: true,
        floatingLabelBehavior: widget.floatLabel
            ? FloatingLabelBehavior.auto
            : FloatingLabelBehavior.never,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: widget.underlineColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        labelStyle: TextStyle(
            color: widget.labelColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal),
        labelText: widget.labelText);
  }
}
