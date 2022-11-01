import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_constants.dart';
import 'package:farmlink/utils/util_helpers.dart';
import 'package:farmlink/utils/util_images.dart';
import 'package:farmlink/utils/util_methods.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:farmlink/widgets/ui-widgets/footer.dart';
import 'package:farmlink/widgets/ui-widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
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
                      image: AssetImage(background3),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Header(
                      isInnerPage: true,
                      hideSearch: true,
                      isDarkArrow: true,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      strGeneral,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: colorText),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            // padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28)),
                                color: colorBackgroundDark.withOpacity(0.17)),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 24,
                                ),
                                Column(
                                  children: List.generate(
                                    generalList.length,
                                    (index) => Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 20),
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 18, horizontal: 24),
                                      decoration: BoxDecoration(
                                          color: colorLight,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Row(
                                        children: [
                                          Text(
                                            generalList[index],
                                            style: const TextStyle(
                                                color: colorText,
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: colorBackgroundDark.withOpacity(0.17),
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Center(
                              child: Footer(
                            textColor: colorBackgroundDark,
                          )),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
