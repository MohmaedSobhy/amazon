import 'package:amazon/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class AccountViewCustomButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const AccountViewCustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black26),
                  borderRadius: BorderRadius.circular(20)),
            ),
            backgroundColor:
                const MaterialStatePropertyAll(AppColor.greyBackgroundCOlor)),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
