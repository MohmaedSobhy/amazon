import 'package:amazon/core/routes/app_route.dart';
import 'package:amazon/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AmazonApp extends StatelessWidget {
  const AmazonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute.generateRouet,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: AppColor.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
