import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_methods.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageDetail extends StatefulWidget {
  const MessageDetail({Key? key}) : super(key: key);

  @override
  State<MessageDetail> createState() => _MessageDetailState();
}

class _MessageDetailState extends State<MessageDetail> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController chatController = TextEditingController();
  List basket = [
    {'title': strGoat, 'qty': 1}
  ];
  navigateToInventoryDetail() {
    Navigator.pushNamed(context, routeInventoryDetailScreen);
  }

  openSendOfferDialog(BuildContext context) async {
    return SendOfferDialog(context, basket);
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
                      isInnerPage: true,
                      hideSearch: true,
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(top: 8, right: 20, left: 20),
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 16, right: 20, left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colorLight),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                placeholder,
                                height: 52,
                                width: 52,
                              ),
                              Positioned(
                                  bottom: 5,
                                  right: 5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: colorGreen,
                                        border: Border.all(color: colorLight),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    height: 10,
                                    width: 10,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Text(
                              strRiverlandsRanch.replaceFirst(' ', '\n'),
                              style: const TextStyle(
                                  fontFamily: 'NunitoSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: colorDark2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              openSendOfferDialog(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 8),
                              decoration: BoxDecoration(
                                  color: colorBackgroundDark,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                strSendOffer,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: colorLight),
                              ),
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      // padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colorBackgroundMessage),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 14,
                          ),
                          Expanded(
                            child: ChatListWidget(),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          ChatInputWidget()
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget ChatListWidget() {
    return Container(
      color: colorBackgroundMessage,
      padding: const EdgeInsets.only(bottom: 6, left: 16, right: 16),
      child: ListView.builder(
        shrinkWrap: true,
        // reverse: true,
        itemCount: messagesList.length,
        itemBuilder: (BuildContext context, int index) {
          // final reversedIndex = messagesList.length - 1 - index;
          final item = messagesList[index];
          return
              // Text('d');
              index % 2 != 0
                  ? ChatListLeftItemWidget(item)
                  : ChatListRightItemWidget(item);
        },
      ),
    );
  }

  Widget ChatListLeftItemWidget(dynamic item) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 280),
                  // width: MediaQuery.of(context).size.width * 0.6,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),

                  decoration: const BoxDecoration(
                      color: colorLight,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomRight: Radius.circular(14))),
                  child: Text(
                    item,
                    style: const TextStyle(
                        fontFamily: 'NunitoSans',
                        color: colorDark,
                        fontSize: 14),
                    // textAlign: TextAlign.left
                  ),
                ),
                const SizedBox(height: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ChatListRightItemWidget(dynamic item) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 280),

                  // width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: const BoxDecoration(
                      color: colorBackgroundDark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14))),
                  child: Text(
                    item,
                    style: const TextStyle(
                        fontFamily: 'NunitoSans',
                        color: colorLight,
                        fontSize: 14),
                    // textAlign: TextAlign.right
                  ),
                ),
                const SizedBox(height: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ChatInputWidget() {
    return Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: const BoxDecoration(
            color: colorLight,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          ),
          // margin:
          // const EdgeInsets.only(top: 8, bottom: 16, right: 16, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // InkWell(
              //   onTap: () {
              //     showImagePicker(context);
              //   },
              //   child: Image.asset(
              //     camera,
              //     height: 18,
              //   ),
              // ),
              Expanded(
                child: Container(
                  // margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.only(right: 12, left: 2),
                  decoration: BoxDecoration(
                    color: colorBackgroundMessageInput,
                    border: Border.all(color: colorTransparent),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: chatController,
                          keyboardType: TextInputType.text,
                          autovalidateMode: AutovalidateMode.disabled,
                          minLines: 1,
                          maxLines: 1,
                          // validator: (value) {
                          //   {
                          //     if (value != null && value.isEmpty) {
                          //       return 'Message is required';
                          //     } else {
                          //       return null;
                          //     }
                          //   }
                          // },
                          cursorColor: colorDark,
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: colorTransparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: colorTransparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0))),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              labelStyle: TextStyle(
                                fontSize: 14,
                                fontFamily: 'NunitoSans',
                                color: colorSearchPlaceholder,
                              ),
                              labelText: strTypeMessage),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.asset(
                        send,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
