import 'package:amazon/Feature/Auth/controller/authincation_cubit.dart';
import 'package:amazon/Feature/Auth/controller/authincation_state.dart';
import 'package:amazon/Feature/Auth/views/sign_in_form.dart';
import 'package:amazon/Feature/Auth/views/sign_up_form.dart';
import 'package:amazon/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthincationScreen extends StatelessWidget {
  final String value = 'Create';

  const AuthincationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.greyBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocConsumer<AuthincationCubit, AuthincationState>(
            listener: (context, state) {},
            builder: (context, state) {
              return ListView(
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ListTile(
                    tileColor: (AuthincationCubit.get(context).isSignin)
                        ? AppColor.backgroundColor
                        : AppColor.greyBackgroundCOlor,
                    leading: Radio(
                      activeColor: AppColor.secondaryColor,
                      value: 'Create',
                      groupValue: value,
                      onChanged: (value) {
                        AuthincationCubit.get(context).authincation();
                      },
                    ),
                    title: const Text(
                      'Create Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: AuthincationCubit.get(context).isSignin,
                    child: const SignUpFormView(),
                  ),
                  ListTile(
                    tileColor:
                        (AuthincationCubit.get(context).isSignin == false)
                            ? AppColor.backgroundColor
                            : AppColor.greyBackgroundCOlor,
                    leading: Radio(
                      activeColor: AppColor.secondaryColor,
                      value: 'Sigin',
                      groupValue: value,
                      onChanged: (value) {
                        AuthincationCubit.get(context).authincation();
                      },
                    ),
                    title: const Text(
                      'Sign...in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: (AuthincationCubit.get(context).isSignin == false),
                    child: const SignInFormView(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
