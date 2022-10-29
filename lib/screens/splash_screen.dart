import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/ui-widgets/footer.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {
  final PageController _pageController = PageController(initialPage: 0);
  startTime() async {
    var duration = const Duration(milliseconds: 2000);
    return Timer(duration, navigateToPage);
  }

  animateToPage(index) {
    // _pageController.animateToPage(index,
    //     duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  navigateToPage() async {
    Navigator.pushReplacementNamed(context, routeLoginScreen);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorTransparent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          // padding: const EdgeInsets.symmetric(vertical: 4),
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
                    height: MediaQuery.of(context).size.height * 0.46,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(),
                  Image.asset(
                    logo2,
                    width: 240,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Center(child: Footer()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
