import 'package:amazon/Feature/account/widgets/custom_button.dart';
import 'package:amazon/core/constants.dart';
import 'package:amazon/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          title: Image.asset(
            AppImages.appLogo,
            width: 130,
            height: 45,
            color: Colors.black,
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: AppColor.appBarGradient,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: AppColor.appBarGradient,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hello, ",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Ziad",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 23,
                        backgroundColor: AppColor.backgroundColor,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person_4_outlined,
                            color: AppColor.backgroundColor,
                            size: 35,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AccountViewCustomButton(
                        onPressed: () {},
                        text: 'Your Orders',
                      ),
                      AccountViewCustomButton(
                        onPressed: () {},
                        text: 'Buy Again',
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AccountViewCustomButton(
                        onPressed: () {},
                        text: 'Your Account',
                      ),
                      AccountViewCustomButton(
                        onPressed: () {},
                        text: 'Your Lists',
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
