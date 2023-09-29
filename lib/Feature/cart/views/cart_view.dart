import 'package:amazon/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: AppColor.appBarGradient,
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text('CartView'),
      ),
      
    );
  }
}
