import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_methods.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:farmlink/widgets/custom_input.dart';
import 'package:farmlink/widgets/ui-widgets/footer.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();

  saveChanges() {
    Navigator.pop(context);
  }

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
                color: colorBackgroundEditProfile,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Header(
                        isInnerPage: true, hideSearch: true, isDarkArrow: true),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      strEditProfile,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: colorText),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28)),
                                color: colorBackgroundEditProfile),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 24,
                                ),
                                Column(children: [
                                  CustomTextField(
                                      usernameController, strUsername),
                                  CustomTextField(emailController, strEmail),
                                  CustomTextField(
                                      phoneController, strPhoneNumber),
                                  CustomTextField(
                                      passwordController, strPassword),
                                  CustomTextField(cityController, strCity),
                                  CustomTextField(stateController, strState),
                                  Container(
                                    margin: const EdgeInsets.only(top: 32),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: colorBackgroundDark),
                                    width: double.infinity,
                                    child: const Text(
                                      strSaveChanges,
                                      style: TextStyle(
                                          color: colorLight,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: colorBackgroundMessage,
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Center(
                              child: Footer(
                            textColor: colorBackgroundDark,
                          )),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget CustomTextField(controller, label) {
    return Container(
      // margin: const EdgeInsets.only(left: 8),
      margin: const EdgeInsets.symmetric(vertical: 9),
      padding: const EdgeInsets.only(right: 12, left: 8, top: 3, bottom: 1),
      decoration: BoxDecoration(
        color: colorLight,
        boxShadow: [
          BoxShadow(
            color: colorOpacity.withOpacity(0.1),
            offset: Offset(0.0, 0.1),
            blurRadius: 0.9,
            spreadRadius: 0.9,
          )
        ],
        border: Border.all(color: colorTransparent),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
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
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: colorTransparent),
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: colorTransparent),
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  labelStyle: const TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    color: colorText,
                  ),
                  labelText: label),
            ),
          ),
        ],
      ),
    );
  }
}
