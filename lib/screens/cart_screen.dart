import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Header(
                      isInnerPage: true,
                      title: strOrderHistory,
                      searchPlaceholder: strSearchOrder,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 12),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                          color: colorBackgroundLight),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: List.generate(
                                  4,
                                  (index) => Container(
                                        padding: const EdgeInsets.all(18),
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        decoration: BoxDecoration(
                                            color: colorLight,
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                const Text(
                                                  strOrder + ' #4534',
                                                  style: TextStyle(
                                                      color: colorDark2,
                                                      fontSize: 16,
                                                      fontFamily: 'NunitoSans',
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                const Text(
                                                  strDateSample,
                                                  style: TextStyle(
                                                      color: colorGreenLight,
                                                      fontSize: 15,
                                                      fontFamily: 'NunitoSans',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 2,
                                            ),
                                            const Text(
                                              strRiverlandsRanch,
                                              style: TextStyle(
                                                  color: colorGreenLight,
                                                  fontSize: 16,
                                                  fontFamily: 'NunitoSans',
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                const Text(
                                                  strQty + ': 4',
                                                  style: TextStyle(
                                                      color: colorGreenLight,
                                                      fontSize: 16,
                                                      fontFamily: 'NunitoSans',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                const Text(
                                                  strTotal + ': \$500',
                                                  style: TextStyle(
                                                      color: colorGreenLight,
                                                      fontSize: 15,
                                                      fontFamily: 'NunitoSans',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                            ),
                            const SizedBox(),
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
