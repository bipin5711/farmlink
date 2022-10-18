import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.only(top: 24,left: 20,right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                placeholder,
                height: 56,
                width: 56,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: RichText(
                  // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
                  text: TextSpan(children: <TextSpan>[
                    const TextSpan(
                      text: strHi,
                      style: TextStyle(
                        color: colorLight,
                        fontSize: 21,
                      ),
                    ),
                    const TextSpan(
                        text: ', ',
                        style: TextStyle(color: colorLight, fontSize: 20)),
                    const TextSpan(
                      text: 'Jonatha!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorLight,
                          fontSize: 21),
                    ),
                  ]),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: CustomInput(
              height: 60,
              textController: cityController,
              labelText: strSearchCity,
              fillColor: colorLight,
              floatLabel: true,
              prefixIcon: Image.asset(
                search,
                height: 24,
                width: 24,
              ),
              borderRadius: 30,
              underlineColor: colorTransparent,
            ),
          ),
        ],
      ),
    );
  }
}
