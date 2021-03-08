import 'package:flutter/material.dart';
import 'package:flutter_30days/core/store.dart';
import 'package:flutter_30days/pages/cart_page.dart';
import 'package:flutter_30days/pages/homepage.dart';
import 'package:flutter_30days/pages/login_page.dart';
import 'package:flutter_30days/utils/routes.dart';
import 'package:flutter_30days/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
    store: MyStore(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
