import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_methods.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';

class ButcherDetail extends StatefulWidget {
  const ButcherDetail({Key? key}) : super(key: key);

  @override
  State<ButcherDetail> createState() => _ButcherDetailState();
}

class _ButcherDetailState extends State<ButcherDetail> {
  handleLink() {
    ConnectButcherDialog(context);
  }

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
                      image: AssetImage(bgHomeRed2),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
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
                                fontSize: 21,
                                fontFamily: 'Poppins',
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                meats,
                                fit: BoxFit.cover,
                                height: 165,
                                width: double.infinity,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text(str1836Butchers,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w400,
                                                  color: colorDark2)),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: List.generate(
                                                5,
                                                (starIndex) => Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 3.0),
                                                    child: Image.asset(
                                                      starIndex < 4
                                                          ? star
                                                          : starUnfilled,
                                                      height: 14,
                                                      width: 14,
                                                    ))),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            heartOutlined,
                                            height: 24,
                                            width: 24,
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              openCustomerReviewDialog(context);
                                            },
                                            child: const Text(strSeeReviews,
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        colorBackgroundDark)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Text(
                                        str7407Spencer,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            color: colorDark),
                                      ),
                                      Column(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          const Text(
                                            strWeekdays + ': 10-5',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700,
                                                color: colorDark),
                                          ),
                                          const Text(
                                            strWeekends + ': 11-4',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700,
                                                color: colorDark),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Text(
                                    strPaymentOptions + ':',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: colorGreyDark),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(
                                          paymentOptions.length,
                                          (paymentIndex) => Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      paymentOptions[
                                                              paymentIndex]
                                                          ['image'],
                                                      height: 28,
                                                      width: 28,
                                                    ),
                                                    Text(
                                                      paymentOptions[
                                                          paymentIndex]['name'],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color:
                                                              colorBackgroundDark),
                                                    ),
                                                  ],
                                                ),
                                              ))),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6.0),
                                    child: const Text(
                                      strDescription,
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: colorBackgroundDark),
                                    ),
                                  ),
                                  const Text(
                                    strLorem,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        height: 1.5,
                                        fontWeight: FontWeight.w300,
                                        color: colorGreyDark),
                                  ),

                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 16),
                                    child: CustomButton(
                                      onPressed: handleLink,
                                      buttonColor: colorRedDark,
                                      text: strLinkwithButcher,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
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
