import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:farmlink/widgets/ui-widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController _textEditingController = TextEditingController();
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  String token = '';
  String mobile = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(greenBackground),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(strVerificationCode,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: colorLight)),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 32),
                          child: Text(strEnterCode,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: colorLight)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 44, left: 64, right: 64),
                          child: PinCodeTextField(
                            autoDisposeControllers: false,
                            appContext: context,
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            length: 4,
                            obscureText: false,
                            obscuringCharacter: '*',
                            blinkWhenObscuring: true,
                            animationType: AnimationType.fade,
                            validator: (v) {
                              // if (v.length < 4) {
                              //   return "Enter valid otp";
                              // } else {
                              //   return null;
                              // }
                            },
                            pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(4),
                                fieldHeight: 50,
                                fieldWidth: 40,
                                activeFillColor: colorLight,
                                selectedFillColor: colorLight,
                                inactiveFillColor: colorLight,
                                // activeFillColor: Colors.blueAccent[100],
                                // selectedFillColor: Colors.blueAccent[100],
                                // inactiveFillColor: Colors.blueAccent[100],
                                borderWidth: 0,
                                inactiveColor: colorTransparent,
                                activeColor: colorTransparent,
                                disabledColor: colorTransparent,
                                selectedColor: colorTransparent),
                            cursorColor: colorLight,
                            animationDuration:
                                const Duration(milliseconds: 300),
                            backgroundColor: colorTransparent,
                            enableActiveFill: true,
                            controller: _textEditingController,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                            ],
                            onCompleted: (v) {
                              print("Completed");
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            beforeTextPaste: (text) {
                              return true;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CustomButton(
                            onPressed: () {},
                            buttonColor: colorSecondary,
                            text: strVerify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(strDidntGetCode + ' ',
                                  style: TextStyle(
                                      color: colorLight, fontSize: 14)),
                              const Text(strResendCode,
                                  style: TextStyle(
                                    color: colorLinkGreen,
                                    fontSize: 14,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Center(child: Footer()),
              )
            ],
          ),
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  // _textEditingController.dispose();
  // super.dispose();
  // }
}
