import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:farmlink/widgets/custom_input.dart';
import 'package:farmlink/widgets/ui-widgets/footer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  handleLogin() {
    // Navigator.pushNamed(context, routeDashboardScreen);
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
                                  strWelcome,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: colorPrimary, fontSize: 36),
                                ),
                                const SizedBox(
                                  height: 16,
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
                                const SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: CustomInput(
                                    height: 54,
                                    textController: passwordController,
                                    labelText: strPassword,
                                    obscureText: obscureText,
                                    fillColor: colorInputBackground,
                                    floatLabel: true,
                                    underlineColor: colorInputUnderline,
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        obscureText = !obscureText;
                                      },
                                      child: const Icon(
                                        Icons.remove_red_eye,
                                        color: colorInputPrimary,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    strForgotPassword,
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: colorTextPrimary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: CustomButton(
                                    onPressed: handleLogin,
                                    buttonColor: colorSecondary,
                                    text: strLoginCaps,
                                  ),
                                ),

                                // ignore: prefer_const_constructors
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: const Text(
                                    strByContining,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: colorTextSecondary,
                                        fontSize: 13),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: strTerms,
                                        style: const TextStyle(
                                          color: colorPrimary,
                                          decoration: TextDecoration.underline,
                                          fontSize: 13,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.pushNamed(
                                                context, routeSignupScreen);
                                          }),
                                    const TextSpan(
                                        text: ' ' + strAnd + ' ',
                                        style: TextStyle(
                                            color: colorTextSecondary,
                                            fontSize: 13)),
                                    TextSpan(
                                        text: strPrivacy,
                                        style: const TextStyle(
                                            color: colorPrimary,
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 13),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.pushNamed(
                                                context, routeSignupScreen);
                                          }),
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      const TextSpan(
                                          text: strDontAccount + ' ',
                                          style: TextStyle(
                                              color: colorTextSecondary,
                                              fontSize: 15)),
                                      TextSpan(
                                          text: strSignup,
                                          style: const TextStyle(
                                            color: colorPrimary,
                                            fontSize: 15,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.pushNamed(
                                                  context, routeSignupScreen);
                                            }),
                                    ]),
                                  ),
                                ),

                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.075,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.045,
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24.0),
                            child: Center(child: Footer()),
                          )
                        ])))));
  }
}
