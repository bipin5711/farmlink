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
    Navigator.pushNamed(context, routeLayoutScreen);
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
                            image: AssetImage(lightBackground),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Image.asset(
                              bg1,
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height * 0.3,
                            )),
                        Positioned(
                            bottom: -242,
                            left: -10,
                            right: 0,
                            child: Image.asset(
                              bottom3,
                              height: MediaQuery.of(context).size.height * 0.46,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
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
                                            MediaQuery.of(context).size.height *
                                                0.075,
                                      ),
                                      Image.asset(
                                        logo4,
                                        width: 225,
                                        height: 225,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      const Text(
                                        strWelcome,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: colorTitleGreen,
                                            fontFamily: 'Inter',
                                            fontSize: 32,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4),
                                        child: CustomInput(
                                          height: 52,
                                          textController: emailController,
                                          labelText: strEmail,
                                          fillColor: colorInputBackground,
                                          floatLabel: true,
                                          underlineColor: colorInputUnderline,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4),
                                        child: CustomInput(
                                          height: 52,
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
                                        height: 4,
                                      ),
                                      const SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          strForgotPassword,
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: colorTextPrimary,
                                              fontFamily: 'Inter',
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
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: const Text(
                                          strByContining,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              color: colorTextMain,
                                              fontSize: 13),
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(children: <TextSpan>[
                                          TextSpan(
                                              text: strTerms,
                                              style: const TextStyle(
                                                color: colorLinkGreen,
                                                decoration:
                                                    TextDecoration.underline,
                                                fontSize: 13,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  handleSignup();
                                                }),
                                          const TextSpan(
                                              text: ' ' + strAnd + ' ',
                                              style: TextStyle(
                                                  color: colorTextMain,
                                                  fontSize: 13)),
                                          TextSpan(
                                              text: strPrivacy,
                                              style: const TextStyle(
                                                  color: colorLinkGreen,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontSize: 13),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  handleSignup();
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
                                                    fontFamily: 'Inter',
                                                    color: colorTextSecondary,
                                                    fontSize: 14)),
                                            TextSpan(
                                                text: strSignup,
                                                style: const TextStyle(
                                                    color: colorInputUnderline,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        handleSignup();
                                                      }),
                                          ]),
                                        ),
                                      ),
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Center(child: Footer()),
                                )
                              ]),
                        ),
                      ],
                    )))));
  }
}
