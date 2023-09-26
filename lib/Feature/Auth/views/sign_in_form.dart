import 'package:amazon/Feature/Auth/views/sized_box_hight.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_buttom.dart';
import '../../../core/widgets/text_form_field.dart';

class SignInFormView extends StatelessWidget {
  const SignInFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            text: "Sign In",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
