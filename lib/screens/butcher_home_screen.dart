import 'dart:async';

import 'package:farmlink/utils/preference_helper.dart';
import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:farmlink/widgets/custom_checkbox.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ButcherHome extends StatefulWidget {
  const ButcherHome({Key? key}) : super(key: key);

  @override
  State<ButcherHome> createState() => _ButcherHomeState();
}

class _ButcherHomeState extends State<ButcherHome> {
  bool mapSwitch = false;
  bool isFilter = false;
  Completer<GoogleMapController> _controller = Completer();

  // static final CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  // static final CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  final LatLng _center = const LatLng(45.521563, -122.677433);
  late GoogleMapController mapController;
  List<String> selectedFilters = [];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  toggleCheckbox(value) {
    if (selectedFilters.contains(value)) {
      selectedFilters.remove(value);
    } else {
      selectedFilters.add(value);
    }
    setState(() {});
  }

  handleApply() {}
  navigateToDetail() {
    Navigator.pushNamed(context, routeDetailScreen);
  }

  navigateToInventory() {
    Navigator.pushNamed(context, routeInventoryScreen);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: colorSecondary,
      statusBarBrightness: Brightness.dark,
    ));
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        // width: double.infinity,
        decoration: const BoxDecoration(
            color: colorInputBackground,
            image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage(bgHomeRed2),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
              child: Header(
                searchPlaceholder: strSearchCity,
                hideSearch: mapSwitch,
              ),
            ),
            SizedBox(
              height: mapSwitch ? 42 : 8,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(horizontal: 20),
                color: colorBackgroundLight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 6),
                      width: double.infinity,
                      color: colorBackgroundGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            strFilter,
                            style: TextStyle(
                                color: colorDark2,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    mapSwitch = false;
                                    isFilter = !isFilter;
                                  });
                                },
                                child: Image.asset(
                                  filter,
                                  height: 26,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    isFilter
                        ? Expanded(
                            child: Container(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 1.5,
                                      color: colorDivider,
                                      width: double.infinity,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      color: colorBackgroundGrey,
                                      padding: const EdgeInsets.only(
                                          right: 20, left: 20, bottom: 12),
                                      child: Column(
                                        children: [
                                          Column(
                                              children: List.generate(
                                                  filterData.length,
                                                  (index) => FilterSection(
                                                      filterData, index))),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 48, vertical: 4),
                                            decoration: BoxDecoration(
                                                color: colorBackgroundDark,
                                                borderRadius:
                                                    BorderRadius.circular(9)),
                                            child: const Text(
                                              strApply,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: colorLight),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(top: 6),
                              child: SingleChildScrollView(
                                child: Column(
                                    children: List.generate(
                                        butcherHomeData.length,
                                        (index) =>
                                            CardItem(butcherHomeData, index))),
                              ),
                            ),
                          )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }

  Widget FilterSection(filterData, index) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          index != 0
              ? Container(
                  height: 1.5,
                  color: colorDivider,
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 12, top: 6),
                )
              : const SizedBox(
                  height: 4,
                ),
          Text(
            filterData[index],
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: colorDark2),
          ),
          filterData[index] == strLivestock
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Row(
                        children: [
                          Expanded(child: FilterCheckbox(strBeef, cow)),
                          Expanded(child: FilterCheckbox(strPork, pig)),
                          Expanded(child: FilterCheckbox(strFowl, hen))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0),
                      child: Row(
                        children: [
                          Expanded(child: FilterCheckbox(strSheep, sheep)),
                          Expanded(child: FilterCheckbox(strGoat, goat)),
                          Expanded(child: FilterCheckbox(strPoultry, duck))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: FilterCheckbox(strRabbit, rabbit)),
                          Expanded(
                              flex: 2,
                              child: FilterCheckbox(strWildExotic, deer)),
                        ],
                      ),
                    )
                  ],
                )
              : filterData[index] == strTypeMeat
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: FilterCheckbox(strHalal, halal)),
                              Expanded(
                                  flex: 2,
                                  child: FilterCheckbox(strKosher, rectangle)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: FilterCheckbox(strGrassFed, null)),
                              Expanded(
                                  flex: 4,
                                  child: FilterCheckbox(strGrainFed, null)),
                              Expanded(
                                  flex: 5,
                                  child: FilterCheckbox(strHormoneFree, null))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: FilterCheckbox(
                                      strCustomFeedProgram, null)),
                              Expanded(
                                  flex: 3,
                                  child: FilterCheckbox(strGMOFree, null)),
                            ],
                          ),
                        )
                      ],
                    )
                  : filterData[index] == strDairy
                      ? Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(strCow,
                                              style: TextStyle(
                                                  color: colorDark2,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600)),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Image.asset(cow),
                                        ],
                                      )),
                                      Expanded(
                                          child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(strGoat,
                                              style: TextStyle(
                                                  color: colorDark2,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600)),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Image.asset(goat),
                                        ],
                                      )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Row(
                                        children: [
                                          FilterCheckbox(strMilk, null),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          FilterCheckbox(strCheese, null),
                                        ],
                                      )),
                                      Expanded(
                                          child: Row(
                                        children: [
                                          FilterCheckbox(strMilk, null),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          FilterCheckbox(strCheese, null),
                                        ],
                                      )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      : filterData[index] == strProduce
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: FilterCheckbox(
                                              strBulkVegetables, vegetables)),
                                      Expanded(
                                          flex: 2,
                                          child: FilterCheckbox(
                                              strRetail, retail)),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : filterData[index] == strMiscellaneous
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: FilterCheckbox(
                                                  strHoney, honey)),
                                          Expanded(
                                              child: FilterCheckbox(
                                                  strSoaps, soap)),
                                          Expanded(
                                              child: FilterCheckbox(
                                                  strEggs, eggs)),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
        ],
      ),
    );
  }

  Widget FilterCheckbox(title, image) {
    print(title);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomCheckbox(
            toggle: () {
              toggleCheckbox(title);
            },
            selected: selectedFilters.contains(title),
            borderColor: colorCheckboxBorder,
            size: 'small'),
        Padding(
          padding: const EdgeInsets.only(left: 7, right: 6),
          child: Text(title,
              style: const TextStyle(
                  color: colorDark2,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
        ),
        SizedBox(child: image != null ? Image.asset(image) : null)
      ],
    );
  }

  Widget CardItem(butcherHomeData, index) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    butcherHomeData[index]['image'],
                    height: 92,
                    width: 92,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        strRiverlandsRanch,
                        style: TextStyle(
                            color: colorDark2,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        strHouston,
                        style: TextStyle(
                            color: colorDark2,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: List.generate(
                                5,
                                (starIndex) => Padding(
                                      padding:
                                          const EdgeInsets.only(right: 3.0),
                                      child: Image.asset(
                                        starIndex <
                                                butcherHomeData[index]['rating']
                                            ? star
                                            : starUnfilled,
                                        height: 18,
                                        width: 18,
                                      ),
                                    )),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                child: InkWell(
                  onTap: () => navigateToDetail(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: colorSecondary,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: const Radius.circular(8)),
                      border: Border.all(color: colorSecondary, width: 1),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: const Text(strViewButchersProfile,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: colorLight,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
