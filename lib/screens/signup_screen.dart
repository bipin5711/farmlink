import 'dart:io';

import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:farmlink/widgets/custom_input.dart';
import 'package:farmlink/widgets/ui-widgets/footer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();

  navigateToLogin() {
    Navigator.pushNamed(context, routeLoginScreen);
  }

  handleSignup() {
    Navigator.pushNamed(context, routeSignupScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colorTransparent,
        body: SafeArea(
            child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage(greenBackground),
                            fit: BoxFit.cover)),
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        margin: const EdgeInsets.only(top: 70),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50)),
                            image: DecorationImage(
                                alignment: Alignment.center,
                                image: AssetImage(lightBackground),
                                fit: BoxFit.cover)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    top: -40,
                                    child: Image.asset(
                                      logo,
                                      height: 120,
                                    ),
                                  ),
                                  Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                        ),
                                        const Text(
                                          strSignup,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: colorTitleGreen,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Text(
                                          strSignupToContinueCaps,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: colorTextSecondary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: CustomInput(
                                            height: 52,
                                            textController: fullNameController,
                                            labelText: strFullname,
                                            fillColor: colorInputBackground,
                                            floatLabel: true,
                                            underlineColor: colorInputUnderline,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: CustomInput(
                                            height: 52,
                                            textController: emailController,
                                            labelText: strEmail,
                                            fillColor: colorInputBackground,
                                            floatLabel: true,
                                            underlineColor: colorInputUnderline,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: CustomInput(
                                            height: 52,
                                            textController: passwordController,
                                            labelText: strPassword,
                                            fillColor: colorInputBackground,
                                            floatLabel: true,
                                            underlineColor: colorInputUnderline,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: CustomInput(
                                            height: 52,
                                            textController:
                                                rePasswordController,
                                            labelText: strRePassword,
                                            fillColor: colorInputBackground,
                                            floatLabel: true,
                                            underlineColor: colorInputUnderline,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: CustomInput(
                                            height: 52,
                                            textController: phoneController,
                                            labelText: strPhoneNumber,
                                            fillColor: colorInputBackground,
                                            floatLabel: true,
                                            underlineColor: colorInputUnderline,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: CustomInput(
                                            height: 52,
                                            textController: cityController,
                                            labelText: strCity,
                                            fillColor: colorInputBackground,
                                            floatLabel: true,
                                            underlineColor: colorInputUnderline,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: CustomInput(
                                                  height: 52,
                                                  textController:
                                                      stateController,
                                                  labelText: strState,
                                                  fillColor:
                                                      colorInputBackground,
                                                  floatLabel: true,
                                                  underlineColor:
                                                      colorInputUnderline,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Expanded(
                                                child: CustomInput(
                                                  height: 52,
                                                  textController:
                                                      zipcodeController,
                                                  labelText: strZipcode,
                                                  fillColor:
                                                      colorInputBackground,
                                                  floatLabel: true,
                                                  underlineColor:
                                                      colorInputUnderline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: 12.0,
                                            top: 16,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: CustomButton(
                                              onPressed: handleSignup,
                                              buttonColor: colorSecondary,
                                              text: strSignupCaps,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: RichText(
                                            text: TextSpan(children: <TextSpan>[
                                              const TextSpan(
                                                  text: strAlreadyAccount + ' ',
                                                  style: TextStyle(
                                                      color: colorTextSecondary,
                                                      fontSize: 14)),
                                              TextSpan(
                                                  text: strLogin,
                                                  style: const TextStyle(
                                                      color: colorPrimary,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          Navigator.pushNamed(
                                                              context,
                                                              routeLoginScreen);
                                                        }),
                                            ]),
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              )
                              // Padding(
                              //   padding: const EdgeInsets.only(bottom: 24.0),
                              //   child: Center(child: Footer()),
                              // )
                            ]),
                      ),
                    )))));
  }
}
