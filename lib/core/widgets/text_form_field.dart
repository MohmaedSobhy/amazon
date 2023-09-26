import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomeTextFormField extends StatelessWidget {
  final TextEditingController controller;
  // ignore: prefer_typing_uninitialized_variables
  var onValidate;
  final String hint;
  final bool? readOnly;
  final TextInputType textInputType;
  final int? maxLines;
  final bool? obscure;
  CustomeTextFormField({
    super.key,
    required this.controller,
    this.onValidate,
    required this.hint,
    required this.textInputType,
    this.readOnly,
    this.maxLines,
    this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: onValidate,
      maxLines: (maxLines == null) ? 1 : maxLines!,
      readOnly: readOnly == null ? false : readOnly!,
      cursorColor: Colors.black38,
      keyboardType: textInputType,
      obscureText: (obscure == null) ? false : obscure!,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.black38,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
      ),
    );
  }
}
