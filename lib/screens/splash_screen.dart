import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_routes.dart';
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        // padding: const EdgeInsets.symmetric(vertical: 4),
        decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage(splashBackground),
                fit: BoxFit.cover)),
        child: Container(),
      ),
    );
  }
}
