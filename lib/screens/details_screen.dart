import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  handleLink() {}
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
          child: SingleChildScrollView(
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
                      height: 12,
                    ),
                    Image.asset(
                      back,
                      height: 24,
                      width: 24,
                    ),
                    Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 8),
                        padding: const EdgeInsets.only(top: 9, bottom: 7),
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
                                  fontWeight: FontWeight.w400,
                                  color: colorDark2),
                            ),
                            const Text(
                              strHouston,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: colorDark2),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: double.infinity,
                      // padding: const EdgeInsets.only(top: 9, bottom: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colorLight),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              house,
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
                                        const Text(strRiverlandsRanch,
                                            style: TextStyle(
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
                                                    height: 16,
                                                    width: 16,
                                                  ))),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Text(strSeeReviews,
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: colorBackgroundDark)),
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
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 12,
                                              color: colorDark,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  strPaymentOptions + ':',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: colorGreyDark),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                    paymentOptions[paymentIndex]
                                                        ['image'],
                                                    height: 28,
                                                    width: 28,
                                                  ),
                                                  Text(
                                                    paymentOptions[paymentIndex]
                                                        ['name'],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            colorBackgroundDark),
                                                  ),
                                                ],
                                              ),
                                            ))),
                                SizedBox(
                                  height: 6,
                                ),
                                // ignore: prefer_const_constructors
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: const Text(
                                    strDescription,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: colorBackgroundDark),
                                  ),
                                ),
                                const Text(
                                  strLorem,
                                  style: TextStyle(
                                      fontSize: 15,
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
                                    buttonColor: colorBackgroundDark,
                                    text: strLinkWithFarmer,
                                  ),
                                ),
                                const SizedBox(height: 6),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
