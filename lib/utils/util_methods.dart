import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:flutter/material.dart';

CustomerReviewDialog(context) async {
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
                      color: colorBackgroundDark,
                      fontWeight: FontWeight.w800,
                      fontSize: 27,
                    ),
                  ),
                ),
                SizedBox(
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
                            height: 20,
                            width: 20,
                          ))),
                ),
                SizedBox(
                  height: 36,
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
                          margin: const EdgeInsets.symmetric(vertical: 6),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                strDanyalGabaji,
                                textAlign: TextAlign.center,
                                style: TextStyle(
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
                                      color: colorDark,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox()
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
