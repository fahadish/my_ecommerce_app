import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_ecommerce_app/src/config/route.dart';
import 'package:my_ecommerce_app/src/pages/mainPage.dart';
import 'package:my_ecommerce_app/src/pages/product_detail.dart';
import 'package:my_ecommerce_app/src/widgets/customRoute.dart';

import 'src/themes/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name!.contains('detail')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => ProductDetailPage());
        } else {
          return CustomRoute<bool>(
              builder: (BuildContext context) => MainPage());
        }
      },
      initialRoute: "MainPage",
    );
  }
}
