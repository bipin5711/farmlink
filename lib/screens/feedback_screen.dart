import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:farmlink/widgets/custom_input.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';

class OrderFeedback extends StatefulWidget {
  const OrderFeedback({Key? key}) : super(key: key);

  @override
  State<OrderFeedback> createState() => _OrderFeedbackState();
}

class _OrderFeedbackState extends State<OrderFeedback> {
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTransparent,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: colorBackgroundFeedback,
                // image: DecorationImage(
                //     alignment: Alignment.center,
                //     image: AssetImage(bgHomeGreen2),
                //     fit: BoxFit.cover)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colorBackgroundFeedback),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 42, right: 20, left: 20, bottom: 72),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(60),
                                      bottomRight: Radius.circular(60)),
                                  color: colorBackgroundDark),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    strChatEnded,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: colorLight,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(45),
                                        child: Container(
                                          color: colorLight,
                                          padding: const EdgeInsets.all(4),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(45),
                                            child: Image.asset(
                                              house,
                                              height: 85,
                                              width: 85,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 50,
                                        left: 50,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(45),
                                          child: Container(
                                            color: colorLight,
                                            padding: const EdgeInsets.all(4),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                              child: Image.asset(
                                                meats,
                                                height: 85,
                                                width: 85,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                children: [
                                  const Text(
                                    strHowExperienceWithButchers,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: colorDark,
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                        5,
                                        (starIndex) => Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 3.0),
                                              child: Image.asset(
                                                starUnfilled,
                                                height: 40,
                                                width: 40,
                                              ),
                                            )),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    strHowExperienceWithButchers,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: colorDark,
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                        5,
                                        (starIndex) => Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 3.0),
                                              child: Image.asset(
                                                starUnfilled,
                                                height: 40,
                                                width: 40,
                                              ),
                                            )),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Row(
                                    children: [
                                      // Expanded(
                                      //   child: Padding(
                                      //     padding: const EdgeInsets.symmetric(
                                      //         vertical: 6, horizontal: 16),
                                      //     child: CustomInput(
                                      //       height: 80,
                                      //       borderRadius: 230,
                                      //       textController: commentController,
                                      //       labelText: strAdditonalComments,
                                      //       labelColor: colorSearchPlaceholder,
                                      //       borderColor: colorLight,
                                      //       maxLines: 4,
                                      //     ),
                                      //   ),
                                      // ),

                                      Expanded(
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 14),
                                          padding: const EdgeInsets.only(
                                              right: 12,
                                              left: 8,
                                              top: 3,
                                              bottom: 1),
                                          decoration: BoxDecoration(
                                            color: colorLight,
                                            border: Border.all(
                                                color: colorTransparent),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: TextFormField(
                                            controller: commentController,
                                            keyboardType: TextInputType.text,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            minLines: 3,
                                            maxLines: 3,
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
                                            decoration: const InputDecoration(
                                                focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            colorTransparent),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                0))),
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            colorTransparent),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                0))),
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 12,
                                                        vertical: 4),
                                                labelStyle: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Poppins',
                                                  color: colorSearchPlaceholder,
                                                ),
                                                labelText:
                                                    strAdditonalComments),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 12.0,
                                        top: 12,
                                        left: 16,
                                        right: 16),
                                    child: SizedBox(
                                      child: CustomButton(
                                        onPressed: () {},
                                        horizontalPadding: 36,
                                        verticalPadding: 12,
                                        borderRadius: 5,
                                        buttonColor: colorBackgroundDark,
                                        // borderColor: colorLight,
                                        text: strSubmit,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
