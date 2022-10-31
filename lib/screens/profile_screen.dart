import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_methods.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/ui-widgets/footer.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  logout() {
    Navigator.pushNamed(context, routeLoginScreen);
  }

  orderHistory() {
    Navigator.pushNamed(context, routeCartScreen);
  }

  general() {
    Navigator.pushNamed(context, routeGeneralScreen);
  }

  editProfile() {
    Navigator.pushNamed(context, routeEditProfileScreen);
  }

  editProfilePicture() {
    UpdateProfileDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colorLight,
        body: SafeArea(
            child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            // alignment: Alignment.center,
                            image: AssetImage(background3),
                            fit: BoxFit.cover)),
                    child: Padding(
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
                                    height: MediaQuery.of(context).size.height *
                                        0.09,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                            color: colorLight,
                                            borderRadius:
                                                BorderRadius.circular(60)),
                                        child: Image.asset(
                                          placeholder,
                                          width: 110,
                                          height: 110,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 12,
                                          left: 40,
                                          child: InkWell(
                                            onTap: editProfilePicture,
                                            child: Container(
                                              padding: EdgeInsets.all(6),
                                              decoration: BoxDecoration(
                                                  color: colorLight
                                                      .withOpacity(0.55),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: Image.asset(
                                                pencil,
                                                height: 18,
                                                width: 18,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  const Text(
                                    strJonatha,
                                    style: TextStyle(
                                        color: colorText,
                                        fontFamily: 'Poppins',
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600),
                                  ),

                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 24),
                                    decoration: BoxDecoration(
                                        color: colorLight,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Text(
                                      strJanathaGmail,
                                      style: TextStyle(
                                          color: colorText,
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Column(
                                      children: List.generate(
                                    profileList.length,
                                    (index) => InkWell(
                                      onTap: () {
                                        index == 0
                                            ? editProfile()
                                            : index == 1
                                                ? orderHistory()
                                                : index == 2
                                                    ? general()
                                                    : index == 3
                                                        ? logout()
                                                        : '';
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        width: double.infinity,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 18, horizontal: 22),
                                        decoration: BoxDecoration(
                                            color: colorLight,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              profileList[index]['image'],
                                              height: 20,
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              profileList[index]['title'],
                                              style: const TextStyle(
                                                  color: colorText,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ))
                                  // ignore: prefer_const_constructors
                                ]),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Center(
                                  child: Footer(
                                textColor: colorBackgroundDark,
                              )),
                            )
                          ]),
                    )))));
  }
}
