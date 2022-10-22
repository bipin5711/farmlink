import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:farmlink/widgets/ui-widgets/footer.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  handleFarmer() {
    Navigator.pushNamed(context, routeLayoutScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(darkBgNoCow),
                  fit: BoxFit.cover)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage(lightBackground),
                          fit: BoxFit.cover)),
                  child: Stack(
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
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: const Text(
                                strWelcome,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: colorTitleGreen,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              strLookingfor,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: colorTextSecondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            InkWell(
                              onTap: handleFarmer,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 40, bottom: 12),
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: colorBackgroundDark),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: const Text(
                                  strFarmer,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: colorLight,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),

                            InkWell(
                              onTap: handleFarmer,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(bottom: 130, top: 12),
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: colorSecondary),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: const Text(
                                  strButcher,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: colorLight,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            )
                          ]),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Center(child: Footer()),
                )
              ]),
        ),
      ),
    );
  }
}
