import 'package:amazon/core/theme/app_color.dart';
import 'package:amazon/core/widgets/custom_buttom.dart';
import 'package:amazon/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final String value = 'Create';
  final bool check = true;
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.greyBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListTile(
                tileColor: (check)
                    ? AppColor.backgroundColor
                    : AppColor.greyBackgroundCOlor,
                leading: Radio(
                  activeColor: AppColor.secondaryColor,
                  value: 'Create',
                  groupValue: value,
                  onChanged: (value) {},
                ),
                title: const Text(
                  'Create Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Visibility(
                visible: true,
                child: Container(
                  color: AppColor.backgroundColor,
                  padding: const EdgeInsets.all(8),
                  child: Form(
                    child: Column(
                      children: [
                        CustomeTextFormField(
                          controller: TextEditingController(),
                          hint: 'Name',
                          textInputType: TextInputType.name,
                        ),
                        CustomeTextFormField(
                          controller: TextEditingController(),
                          hint: 'Email',
                          textInputType: TextInputType.emailAddress,
                        ),
                        CustomeTextFormField(
                          controller: TextEditingController(),
                          hint: 'password',
                          textInputType: TextInputType.emailAddress,
                          obscure: true,
                        ),
                        CustomButton(
                          text: "Sign UP",
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Radio(
                  activeColor: AppColor.secondaryColor,
                  value: 'Sigin',
                  groupValue: value,
                  onChanged: (value) {},
                ),
                title: const Text(
                  'Sign...in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
