import 'package:amazon/Feature/account/views/account_view.dart';
import 'package:amazon/Feature/cart/views/cart_view.dart';
import 'package:amazon/Feature/home/views/home_view.dart';
import 'package:amazon/Feature/menu/views/menu_view.dart';
import 'package:amazon/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  final List _pages = [
    const HomeView(),
    const AccountView(),
    const CartView(),
    const MenuView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: AppColor.selectedNavBarColor,
        unselectedItemColor: AppColor.unselectedNavBarColor,
        backgroundColor: AppColor.backgroundColor,
        iconSize: 28,
        onTap: (value) {
          setState(() {
            _page = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              padding: const EdgeInsets.only(top: 10),
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? AppColor.selectedNavBarColor
                        : AppColor.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.home_outlined,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              padding: const EdgeInsets.only(top: 10),
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? AppColor.selectedNavBarColor
                        : AppColor.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.person_2_outlined,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              padding: const EdgeInsets.only(top: 10),
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? AppColor.selectedNavBarColor
                        : AppColor.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Badge(
                label: Text('2'),
                textStyle: TextStyle(),
                textColor: Colors.black,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              padding: const EdgeInsets.only(top: 10),
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 3
                        ? AppColor.selectedNavBarColor
                        : AppColor.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.menu_outlined,
              ),
            ),
          ),
        ],
      ),
      body: _pages[_page],
    );
  }
}
