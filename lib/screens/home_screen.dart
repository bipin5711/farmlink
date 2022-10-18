import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: colorInputBackground,
          image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage(bgHomeGreen2),
              fit: BoxFit.cover)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [Header()],
        ),
      ),
    );
  }
}
