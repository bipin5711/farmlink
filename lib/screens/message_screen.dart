import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  handleMessageDetail() {
    Navigator.pushNamed(context, routeMessageDetailScreen);
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
                      searchPlaceholder: strSearchMessage,
                    ),
                  ),
                  const SizedBox(
                    height: 0,
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
                                    (index) => InkWell(
                                          onTap: handleMessageDetail,
                                          child: Container(
                                            padding: const EdgeInsets.all(18),
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 8),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: colorLight,
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            height: 100,
                                            child: Row(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Image.asset(
                                                      placeholder,
                                                      height: 54,
                                                      width: 54,
                                                    ),
                                                    index == 0
                                                        ? Positioned(
                                                            bottom: 5,
                                                            right: 5,
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      colorGreen,
                                                                  border: Border
                                                                      .all(
                                                                          color:
                                                                              colorLight),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12)),
                                                              height: 10,
                                                              width: 10,
                                                            ))
                                                        : const SizedBox(),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    // ignore: prefer_const_literals_to_create_immutables
                                                    children: [
                                                      const Text(
                                                        strRiverlandsRanch,
                                                        style: TextStyle(
                                                            color: colorDark2,
                                                            fontFamily:
                                                                'NunitoSans',
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      const SizedBox(
                                                        height: 4,
                                                      ),
                                                      const Text(
                                                        strLiketoPurchase,
                                                        // ignore: prefer_const_constructors
                                                        style: TextStyle(
                                                            color: colorDark2,
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'NunitoSans',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                // ignore: prefer_const_constructors
                                                SizedBox(
                                                  width: 4,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )))
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
