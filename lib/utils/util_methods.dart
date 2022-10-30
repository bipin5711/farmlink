import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/widgets/custom_button.dart';
import 'package:flutter/material.dart';

CustomerReviewDialog(
  context,
) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          contentPadding: const EdgeInsets.all(0),
          titlePadding: const EdgeInsets.all(0),
          title: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      closeGrey,
                      height: 22,
                      alignment: Alignment.centerRight,
                      width: 22,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    strCustomerReviews,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      color: colorBackgroundDark,
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      5,
                      (starIndex) => Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Image.asset(
                            starIndex < 4 ? star : starUnfilled,
                            height: 22,
                            width: 22,
                          ))),
                ),
                const SizedBox(
                  height: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                      4,
                      (starIndex) => Container(
                          decoration: BoxDecoration(
                              color: colorBackgroundCard,
                              borderRadius: BorderRadius.circular(16)),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                strDanyalGabaji,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'NunitoSans',
                                  color: colorDark,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                strWonderfulExperience,
                                style: TextStyle(
                                  fontFamily: 'NunitoSans',
                                  color: colorDark,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                        5,
                                        (starIndex) => Container(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 3.0),
                                                  child: Image.asset(
                                                    starIndex < 4
                                                        ? starFilledDark
                                                        : starOutlinedDark,
                                                    height: 12,
                                                    width: 12,
                                                  )),
                                            )),
                                  ),
                                  const Text(
                                    str27July,
                                    style: TextStyle(
                                      fontFamily: 'NunitoSans',
                                      color: colorDark,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox()
                                ],
                              ),
                            ],
                          ))),
                ),
              ],
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [],
          ),
        );
      });
}

SendOfferDialog(context, basket, sendOffer) async {
  String selectedValue = products[0];
  return showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)),
            contentPadding: const EdgeInsets.all(0),
            titlePadding: const EdgeInsets.all(0),
            title: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        closeGrey,
                        height: 22,
                        alignment: Alignment.centerRight,
                        width: 22,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      strYourBasket,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        color: colorBackgroundDark,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: List.generate(
                      basket.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 6),
                              decoration: BoxDecoration(
                                  color: colorBackgroundCard,
                                  borderRadius: BorderRadius.circular(10)),
                              child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton(
                                    // itemHeight: 30.0,
                                    // isExpanded: true,
                                    icon: Image.asset(
                                      arrowDown,
                                      height: 9,
                                    ),
                                    onChanged: (selectedItem) {},
                                    // onChanged: widget.onChanged,
                                    items: products.map((dropDownItem) {
                                      return DropdownMenuItem(
                                        value: dropDownItem,
                                        child: Text(
                                          dropDownItem,
                                          maxLines: 2,
                                          // overflow: TextOverflow.clip,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              color: colorDark,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'NunitoSans'),
                                        ),
                                      );
                                    }).toList(),
                                    value: selectedValue,
                                    hint: const Text(
                                      strBeef,
                                      maxLines: 1,
                                      // overflow: TextOverflow.clip,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: colorGreyDark, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: colorBackgroundDark,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      int decrementedValue =
                                          basket[index]['qty'] - 1;
                                      setState(() {
                                        basket[index]['qty'] = decrementedValue;
                                      });
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                            color: colorLight,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            fontFamily: 'NunitoSans'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 3),
                                    decoration: BoxDecoration(
                                        color: colorLight,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Text(
                                      basket[index]['qty'].toString(),
                                      style: const TextStyle(
                                          color: colorDark,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          fontFamily: 'NunitoSans'),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      int incrementedValue =
                                          basket[index]['qty'] + 1;
                                      setState(() {
                                        basket[index]['qty'] = incrementedValue;
                                      });
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            color: colorLight,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            fontFamily: 'NunitoSans'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      dynamic newItem = {'title': strGoat, 'qty': 1};
                      setState(() {
                        basket.add(newItem);
                      });
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        '+ ' + strAddItem,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'NunitoSans',
                          color: colorBackgroundDark,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: CustomButton(
                      onPressed: () {
                        Navigator.pop(context);
                        sendOffer();
                      },
                      buttonColor: colorBackgroundDark,
                      text: strSendOffer,
                      verticalPadding: 8,
                      horizontalPadding: 16,
                    ),
                  ),
                ],
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [],
            ),
          );
        });
      });
}

OrderPlacedDialog(context, orderAccepted) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          contentPadding: const EdgeInsets.all(0),
          titlePadding: const EdgeInsets.all(0),
          title: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      orderAccepted();
                    },
                    child: Image.asset(
                      closeGrey,
                      height: 22,
                      alignment: Alignment.centerRight,
                      width: 22,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 32, bottom: 16),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: colorBackgroundDark,
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset(
                        check,
                        height: 25,
                        width: 25,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        strOrderPlaced,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          color: colorBackgroundDark,
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [],
          ),
        );
      });
}

OrderAcceptedDialog(context, orderDeclined) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          contentPadding: const EdgeInsets.all(0),
          titlePadding: const EdgeInsets.all(0),
          title: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      closeGrey,
                      height: 22,
                      alignment: Alignment.centerRight,
                      width: 22,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: colorBackgroundDark,
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset(
                        check,
                        height: 25,
                        width: 25,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        strOrderAccepted,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          color: colorBackgroundDark,
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const Text(
                      strOrder + ' #4545',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        color: colorBackgroundDark,
                        fontWeight: FontWeight.w400,
                        fontSize: 21,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomButton(
                      onPressed: () {
                        Navigator.pop(context);
                        orderDeclined();
                      },
                      buttonColor: colorBackgroundDark,
                      text: strConnectwithButcher,
                      verticalPadding: 8,
                      horizontalPadding: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [],
          ),
        );
      });
}

OrderDeclinedDialog(context, feedback) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          contentPadding: const EdgeInsets.all(0),
          titlePadding: const EdgeInsets.all(0),
          title: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      closeGrey,
                      height: 22,
                      alignment: Alignment.centerRight,
                      width: 22,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      cancel,
                      height: 36,
                      width: 36,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        strOrderDeclined,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          color: colorBackgroundDark,
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomButton(
                      onPressed: () {
                        Navigator.pop(context);
                        feedback();
                      },
                      buttonColor: colorBackgroundDark,
                      text: strFindAnotherFarm,
                      verticalPadding: 8,
                      horizontalPadding: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [],
          ),
        );
      });
}
