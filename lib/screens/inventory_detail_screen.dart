import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_methods.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';

class InventoryDetail extends StatefulWidget {
  const InventoryDetail({Key? key}) : super(key: key);

  @override
  State<InventoryDetail> createState() => _InventoryDetailState();
}

class _InventoryDetailState extends State<InventoryDetail> {
  handleLink() {}
  openCustomerReviewDialog(BuildContext context) async {
    return CustomerReviewDialog(context);
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  color: colorInputBackground,
                  image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage(bgHomeGreen2),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Header(
                    isInnerPage: true,
                    hideSearch: true,
                  ),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.only(top: 4, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colorLight),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            strRiverlandsRanch,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 21,
                                fontWeight: FontWeight.w400,
                                color: colorDark2),
                          ),
                          const Text(
                            strHouston,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: colorDark2),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      // padding: const EdgeInsets.only(top: 9, bottom: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colorLight),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 20),
                                        width: double.infinity,
                                        color: colorBackgroundDark,
                                        child: const Text(
                                          strPoultry,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500,
                                              color: colorLight),
                                        ),
                                      ),
                                      Positioned(
                                          top: -40,
                                          right: 0,
                                          child: Image.asset(
                                            poultryInventory,
                                            height: 110,
                                            width: 110,
                                          ))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 3),
                                          child: const Text(
                                            strInStock + ':',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: colorGreyDark),
                                          ),
                                        ),
                                        const Text(
                                          ' 5',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400,
                                              color: colorBackgroundDark),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 3),
                                          child: const Text(
                                            strAvailability + ':',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: colorGreyDark),
                                          ),
                                        ),
                                        const Text(
                                          ' ' + strAfterWeek,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 21,
                                              fontWeight: FontWeight.w400,
                                              color: colorBackgroundDark),
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(
                                    height: 24,
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: const Text(
                                      strDescription,
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: colorBackgroundDark),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 4),
                                    child: Text(
                                      strLorem,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          height: 1.5,
                                          fontWeight: FontWeight.w300,
                                          color: colorGreyDark),
                                    ),
                                  ),

                                  Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 24),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 16),
                                    child: CustomButton(
                                      onPressed: handleLink,
                                      buttonColor: colorBackgroundDark,
                                      text: strConnectwithFarmer,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
