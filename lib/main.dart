import 'package:farmlink/screens/login_screen.dart';
import 'package:farmlink/screens/signup_screen.dart';
import 'package:farmlink/screens/splash_screen.dart';
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
      statusBarColor: colorLight,
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
              routeSignupScreen: (BuildContext context) => const Signup()
            }));
  }
}
