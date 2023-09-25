import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AmazonApp extends StatelessWidget {
  const AmazonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
