import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final bool isInnerPage;
  final bool hideSearch;
  final String title;
  final String searchPlaceholder;
  const Header({
    Key? key,
    this.isInnerPage = false,
    this.title = '',
    this.hideSearch = false,
    this.searchPlaceholder = '',
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
      child: Column(
        children: [
          widget.isInnerPage
              ? InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        back,
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w400,
                            color: colorLight),
                      ),
                    ],
                  ),
                )
              : Row(
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
                              style:
                                  TextStyle(color: colorLight, fontSize: 20)),
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
          widget.hideSearch == false
              ? Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: CustomInput(
                    height: 60,
                    textController: cityController,
                    labelText: widget.searchPlaceholder,
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
                )
              : Container(),
        ],
      ),
    );
  }
}
