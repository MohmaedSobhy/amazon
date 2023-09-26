import 'package:amazon/Feature/Auth/views/sized_box_hight.dart';
import 'package:amazon/core/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_buttom.dart';
import '../../../core/widgets/text_form_field.dart';

class SignUpFormView extends StatelessWidget {
  const SignUpFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            const SizedBoxHight(),
            CustomeTextFormField(
              controller: TextEditingController(),
              hint: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBoxHight(),
            CustomeTextFormField(
              controller: TextEditingController(),
              hint: 'password',
              textInputType: TextInputType.visiblePassword,
              obscure: true,
            ),
            const SizedBoxHight(),
            CustomButton(
              text: "Sign UP",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
