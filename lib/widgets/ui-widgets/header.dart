import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final bool isInnerPage;
  final bool hideSearch;
  final String title;
  final String fontFamily;
  final String searchPlaceholder;
  const Header({
    Key? key,
    this.isInnerPage = false,
    this.title = '',
    this.hideSearch = false,
    this.searchPlaceholder = '',
    this.fontFamily = 'Poppins',
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
                        height: 28,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontSize: 21,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: colorLight),
                      ),
                    ],
                  ),
                )
              : Row(
                  children: [
                    Image.asset(
                      placeholder,
                      height: 54,
                      width: 54,
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
                              fontFamily: 'Poppins',
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
                                fontFamily: 'Poppins',
                                fontSize: 21),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
          widget.hideSearch == false
              ?
              // Container(
              //     decoration:
              //         BoxDecoration(borderRadius: BorderRadius.circular(20)),
              //     padding: const EdgeInsets.symmetric(vertical: 4),
              //     margin: const EdgeInsets.symmetric(vertical: 14),
              //     child: CustomInput(
              //       height: 60,
              //       textController: cityController,
              //       labelText: widget.searchPlaceholder,
              //       fillColor: colorLight,
              //       floatLabel: true,
              //       labelColor: colorSearchPlaceholder,
              //       fontFamily: widget.fontFamily,
              //       prefixIcon: Image.asset(
              //         search,
              //         height: 22,
              //         width: 22,
              //       ),
              //       borderRadius: 30,
              //       underlineColor: colorTransparent,
              //     ),
              //   )
              Container(
                  // margin: const EdgeInsets.only(left: 8),
                  margin: const EdgeInsets.symmetric(vertical: 14),
                  padding: const EdgeInsets.only(right: 12, left: 8,top: 3,bottom: 1),
                  decoration: BoxDecoration(
                    color: colorLight,
                    border: Border.all(color: colorTransparent),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Image.asset(
                        search,
                        height: 22,
                        width: 22,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: cityController,
                          keyboardType: TextInputType.text,
                          autovalidateMode: AutovalidateMode.disabled,
                          minLines: 1,
                          maxLines: 1,
                          // validator: (value) {
                          //   {
                          //     if (value != null && value.isEmpty) {
                          //       return 'Message is required';
                          //     } else {
                          //       return null;
                          //     }
                          //   }
                          // },
                          cursorColor: colorDark,
                          decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: colorTransparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0))),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: colorTransparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0))),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              labelStyle: TextStyle(
                                fontSize: 15,
                                fontFamily: widget.fontFamily,
                                color: colorSearchPlaceholder,
                              ),
                              labelText: widget.searchPlaceholder),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
