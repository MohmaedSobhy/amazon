import 'package:amazon/Feature/Auth/controller/authincation_cubit.dart';
import 'package:amazon/Feature/Auth/screens/authincation_screen.dart';
import 'package:amazon/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AmazonApp extends StatelessWidget {
  const AmazonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthincationCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
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
        home: const AuthincationScreen(),
      ),
    );
  }
}
