import 'package:farmlink/screens/cart_screen.dart';
import 'package:farmlink/screens/details_screen.dart';
import 'package:farmlink/screens/favorite_screen.dart';
import 'package:farmlink/screens/feedback_screen.dart';
import 'package:farmlink/screens/home_screen.dart';
import 'package:farmlink/screens/inventory_detail_screen.dart';
import 'package:farmlink/screens/inventory_screen.dart';
import 'package:farmlink/screens/layout_screen.dart';
import 'package:farmlink/screens/login_screen.dart';
import 'package:farmlink/screens/message_detail_screen.dart';
import 'package:farmlink/screens/message_screen.dart';
import 'package:farmlink/screens/otp_screen.dart';
import 'package:farmlink/screens/profile_screen.dart';
import 'package:farmlink/screens/signup_screen.dart';
import 'package:farmlink/screens/splash_screen.dart';
import 'package:farmlink/screens/welcome_screen.dart';
import 'package:farmlink/utils/util_colors.dart';
import 'package:farmlink/utils/util_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: colorBackgroundDark,
      statusBarBrightness: Brightness.dark,
    ));
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: MaterialApp(
            title: 'Farmlink',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.green,
              fontFamily: 'Inter',
              visualDensity: VisualDensity.adaptivePlatformDensity,
              pageTransitionsTheme: const PageTransitionsTheme(builders: {
                TargetPlatform.android: CupertinoPageTransitionsBuilder(),
                TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
              }),
              unselectedWidgetColor: colorLight,
            ),
            color: colorTransparent,
            initialRoute: routeSplashScreen,
            routes: {
              routeSplashScreen: (BuildContext context) => const Splash(),
              routeLoginScreen: (BuildContext context) => const Login(),
              routeSignupScreen: (BuildContext context) => const Signup(),
              routeVerificationOtpScreen: (BuildContext context) =>
                  OtpVerification(),
              routeWelcomeScreen: (BuildContext context) => const Welcome(),
              routeLayoutScreen: (BuildContext context) => Layout(),
              routeHomeScreen: (BuildContext context) => const Home(),
              routeFavoriteScreen: (BuildContext context) => const Favorite(),
              routeCartScreen: (BuildContext context) => const Cart(),
              routeProfileScreen: (BuildContext context) => const Profile(),
              routeMessageScreen: (BuildContext context) => const Message(),
              routeDetailScreen: (BuildContext context) => const Detail(),
              routeInventoryScreen: (BuildContext context) => const Inventory(),
              routeInventoryDetailScreen: (BuildContext context) =>
                  const InventoryDetail(),
              routeMessageDetailScreen: (BuildContext context) =>
                  const MessageDetail(),
              routeFeedbackScreen: (BuildContext context) =>
                  const OrderFeedback()
            }));
  }
}
