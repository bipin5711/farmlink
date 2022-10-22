import 'dart:async';

import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/custom_checkbox.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

  navigateToDetail() {}
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        child: Container(
          // width: double.infinity,
          decoration: const BoxDecoration(
              color: colorInputBackground,
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(bgHomeGreen2),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const Header(),
              Container(
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
                          isFilter
                              ? const Text(
                                  strFilter,
                                  style: TextStyle(
                                      color: colorDark2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              : Row(
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
                              isFilter == false
                                  ? const Text(
                                      strFilter,
                                      style: TextStyle(
                                          color: colorDark2,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )
                                  : const SizedBox(),
                              SizedBox(
                                width: isFilter == false ? 8 : 0,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isFilter = !isFilter;
                                  });
                                },
                                child: Image.asset(
                                  filter,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    mapSwitch == true
                        ? Container(
                            height: MediaQuery.of(context).size.height * 0.53,
                            width: double.infinity,
                            child: GoogleMap(
                              onMapCreated: _onMapCreated,
                              initialCameraPosition: CameraPosition(
                                target: _center,
                                zoom: 12,
                              ),
                              // mapType: MapType.hybrid,
                              // initialCameraPosition: _kGooglePlex,
                              // onMapCreated: (GoogleMapController controller) {
                              //   _controller.complete(controller);
                              // },
                            ),
                          )
                        : isFilter
                            ? Column(
                                children: [
                                  Container(
                                    height: 1.5,
                                    color: colorDivider,
                                    width: double.infinity,
                                  ),
                                  Container(
                                    color: colorBackgroundGrey,
                                    padding: EdgeInsets.only(
                                        right: 20, left: 20, bottom: 12),
                                    child: Column(
                                        children: List.generate(
                                            filterData.length,
                                            (index) => FilterSection(
                                                filterData, index))),
                                  ),
                                ],
                              )
                            : Container(
                                padding: EdgeInsets.only(top: 6),
                                child: Column(
                                    children: List.generate(
                                        homeData.length,
                                        (index) => InkWell(
                                            onTap: () => navigateToDetail(),
                                            child: CardItem(homeData, index)))),
                              )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Widget FilterSection(filterData, index) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          index != 0
              ? Container(
                  height: 1.5,
                  color: colorDivider,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 8, top: 4),
                )
              : SizedBox(
                  height: 4,
                ),
          Text(
            filterData[index]['title'],
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: colorDark2),
          ),
          filterData[index]['title'] == strLivestock
              ? Column(
                  //  {'name': strBeef, 'image': cow},
                  //     {'name': strPork, 'image': pig},
                  //     {'name': strFowl, 'image': hen},
                  //     {'name': strSheep, 'image': sheep},
                  //     {'name': strGoat, 'image': goat},
                  //     {'name': strPoultry, 'image': duck},
                  //     {'name': strRabbit, 'image': rabbit},
                  //     {'name': strWildExotic, 'image': deer},
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
                          Expanded(child: FilterCheckbox(strRabbit, rabbit)),
                          Expanded(child: FilterCheckbox(strWildExotic, deer)),
                          SizedBox()
                        ],
                      ),
                    )
                  ],
                )
              : Container()
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
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
        ),
        Image.asset(image)
      ],
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
                Expanded(
                  child: Column(
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
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                homeData[index]['types'].length,
                                (starIndex) => Padding(
                                    padding: const EdgeInsets.only(right: 3.0),
                                    child: Image.asset(
                                      homeData[index]['types'][starIndex],
                                      height: 28,
                                      width: 28,
                                    ))),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                halal,
                                height: 24,
                                width: 24,
                              ),
                              Image.asset(
                                rectangle,
                                height: 24,
                                width: 24,
                              ),
                            ],
                          ),
                        ],
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
                                        starIndex < homeData[index]['rating']
                                            ? star
                                            : starUnfilled,
                                        height: 16,
                                        width: 16,
                                      ),
                                    )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '6.5 mi.',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: colorDark,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                strViewDirections,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 10,
                                    color: colorDark,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
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
                child: Container(
                  decoration: BoxDecoration(
                    color: colorGreenDark,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: const Radius.circular(8)),
                    border: Border.all(color: colorGreenDark, width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text(strViewProfile,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: colorLight,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: colorTransparent,
                      borderRadius: const BorderRadius.only(
                          bottomRight: const Radius.circular(8)),
                      border: Border.all(color: colorGreenDark, width: 1)),
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text(strViewInventory,
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
