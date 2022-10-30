import 'package:farmlink/models/bottom_navigation.dart';
import 'package:farmlink/screens/cart_screen.dart';
import 'package:farmlink/screens/favorite_screen.dart';
import 'package:farmlink/screens/home_screen.dart';
import 'package:farmlink/screens/message_screen.dart';
import 'package:farmlink/screens/profile_screen.dart';
import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  List<BottomNavigation> iconsList = bottomNavigationData;
  int currentIndex = 2;
  bool showMenu = false;
  bool notificationSwitch = false;
  dynamic nestedMenu = {'title': '', 'route': []};

  Widget getBody(int index) {
    // 0 -> Favorite
    // 1 -> Message
    // 2 -> Home
    // 3 -> Cart
    // 4 -> Profile

    return Stack(
      children: [
        index == 0
            ? const Favorite()
            : index == 1
                ? const Message()
                : index == 2
                    ? const Home()
                    : index == 3
                        ? const Cart()
                        : index == 4
                            ? const Profile()
                            : SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: const Center(
                                    child: Text(
                                  'Page Not found',
                                  style: TextStyle(
                                      fontSize: 24, color: colorPrimary),
                                )),
                              )
      ],
    );
  }

  bool hideBottomNavigation() {
    return showMenu ? true : false;
  }

  handleLogout() {
    Navigator.pushNamed(context, routeLoginScreen);
  }

  navigatePage(route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          bool allowBack = true;
          return Future.value(allowBack);
        },
        child: Scaffold(
          backgroundColor: colorTransparent,
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: hideBottomNavigation()
              ? const SizedBox()
              : Container(
                  height: MediaQuery.of(context).size.height * 00.09,
                  color: colorLight,
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 0, bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(iconsList.length,
                        (index) => BottomBarItem(index: index)),
                  ),
                ),
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: SafeArea(child: getBody(currentIndex)),
          ),
        ));
  }

  // ignore: non_constant_identifier_names
  Widget BottomBarItem({required int index}) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () => setState(() {
              currentIndex = index;
            }),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(250),
                    color: currentIndex == index
                        ? colorBackgroundDark
                        : colorTransparent,
                  ),
                  child: Image.asset(
                      currentIndex == index
                          ? iconsList[index].activeImage
                          : iconsList[index].inactiveImage,
                      height: currentIndex == 4 && index == 4
                          ? MediaQuery.of(context).size.height * 0.04
                          : currentIndex == 3 && index == 3
                              ? MediaQuery.of(context).size.height * 0.05
                              : currentIndex != 2 && index == 2
                                  ? MediaQuery.of(context).size.height * 0.04
                                  : currentIndex == 1 && index == 1
                                      ? MediaQuery.of(context).size.height *
                                          0.06
                                      : MediaQuery.of(context).size.height *
                                          0.05),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
