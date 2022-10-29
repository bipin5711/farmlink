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

class Inventory extends StatefulWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  navigateToInventoryDetail() {
    Navigator.pushNamed(context, routeInventoryDetailScreen);
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
                      title: strInventory,
                      searchPlaceholder: strSearchItems,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colorBackgroundLight),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 14,
                            ),
                            GridView.count(
                              primary: true,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              children: List.generate(
                                  inventoryList.length,
                                  (index) => InkWell(
                                        onTap: navigateToInventoryDetail,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              right: index.isOdd ? 0 : 10,
                                              left: index.isEven ? 0 : 10),
                                          decoration: BoxDecoration(
                                              color: colorLight,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: double.infinity,
                                                child: Text(
                                                  inventoryList[index]['name'],
                                                  textAlign: TextAlign.end,
                                                  style: const TextStyle(
                                                      color: colorDark2,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Image.asset(
                                                inventoryList[index]['image'],
                                                height: 120,
                                                width: 120,
                                                fit: BoxFit.contain,
                                              )
                                            ],
                                          ),
                                        ),
                                      )),
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
