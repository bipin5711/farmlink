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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage(splashBackground),
                            fit: BoxFit.cover)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                ),
                                const Text(
                                  strSignup,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: colorLight, fontSize: 36),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  strSignupToContinue,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: colorLight, fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: CustomInput(
                                    height: 54,
                                    textController: fullNameController,
                                    labelText: strFullname,
                                    fillColor: colorInputBackground,
                                    floatLabel: true,
                                    underlineColor: colorInputUnderline,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: CustomInput(
                                    height: 54,
                                    textController: emailController,
                                    labelText: strEmail,
                                    fillColor: colorInputBackground,
                                    floatLabel: true,
                                    underlineColor: colorInputUnderline,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: CustomInput(
                                    height: 54,
                                    textController: passwordController,
                                    labelText: strPassword,
                                    fillColor: colorInputBackground,
                                    floatLabel: true,
                                    underlineColor: colorInputUnderline,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: CustomInput(
                                    height: 54,
                                    textController: rePasswordController,
                                    labelText: strRePassword,
                                    fillColor: colorInputBackground,
                                    floatLabel: true,
                                    underlineColor: colorInputUnderline,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: CustomInput(
                                    height: 54,
                                    textController: phoneController,
                                    labelText: strPhoneNumber,
                                    fillColor: colorInputBackground,
                                    floatLabel: true,
                                    underlineColor: colorInputUnderline,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: CustomInput(
                                    height: 54,
                                    textController: cityController,
                                    labelText: strCity,
                                    fillColor: colorInputBackground,
                                    floatLabel: true,
                                    underlineColor: colorInputUnderline,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: CustomInput(
                                          height: 54,
                                          textController: stateController,
                                          labelText: strState,
                                          fillColor: colorInputBackground,
                                          floatLabel: true,
                                          underlineColor: colorInputUnderline,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: CustomInput(
                                          height: 54,
                                          textController: zipcodeController,
                                          labelText: strZipcode,
                                          fillColor: colorInputBackground,
                                          floatLabel: true,
                                          underlineColor: colorInputUnderline,
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
                                  padding: const EdgeInsets.only(top: 8),
                                  child: RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      const TextSpan(
                                          text: strAlreadyAccount + ' ',
                                          style: TextStyle(
                                              color: colorLight, fontSize: 14)),
                                      TextSpan(
                                          text: strLogin,
                                          style: const TextStyle(
                                              color: colorPrimary,
                                              fontSize: 14),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.pushNamed(
                                                  context, routeLoginScreen);
                                            }),
                                    ]),
                                  ),
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24.0),
                            child: Center(child: Footer()),
                          )
                        ])))));
  }
}
