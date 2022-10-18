import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool mapSwitch = false;
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
      child: Column(
        children: [
          const Header(),
          Expanded(
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 20),
              color: colorBackgroundLight,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    width: double.infinity,
                    color: colorBackgroundGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              strMapView,
                              style: TextStyle(
                                  color: colorDark2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            FlutterSwitch(
                              width: 32.0,
                              height: 18.0,
                              activeColor: colorSwitchBackground,
                              inactiveColor: colorSwitchBackground2,
                              // valueFontSize: 35.0,
                              toggleSize: 15.0,
                              value: mapSwitch,
                              borderRadius: 20.0,
                              padding: 0,
                              // showOnOff: true,
                              onToggle: (val) {
                                setState(() {
                                  mapSwitch = val;
                                });
                              },
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              strFilter,
                              style: TextStyle(
                                  color: colorDark2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              filter,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Column(
                      children: List.generate(homeData.length,
                          (index) => CardItem(homeData, index))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget CardItem(homeData, index) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      padding: const EdgeInsets.only(top: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: colorLight, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Image.asset(
                  homeData[index]['image'],
                  height: 90,
                  width: 90,
                ),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      strRiverlandsRanch,
                      style: TextStyle(
                          color: colorDark2,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      strRiverlandsRanch,
                      style: TextStyle(
                          color: colorDark2,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    Row()
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: colorGreenDark,
                    borderRadius:
                        const BorderRadius.only(bottomLeft: const Radius.circular(8)),
                    border: Border.all(color: colorGreenDark, width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text(strViewProfile,
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                          color: colorLight,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: colorTransparent,
                      borderRadius:
                          const BorderRadius.only(bottomRight: const Radius.circular(8)),
                      border: Border.all(color: colorGreenDark, width: 1)),
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text(strViewInventory,
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                          color: colorGreenDark,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
