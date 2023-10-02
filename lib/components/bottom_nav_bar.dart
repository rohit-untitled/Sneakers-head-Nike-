import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade800,
          tabActiveBorder: Border.all(
            color: Colors.grey,
          ),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          gap: 10,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
              iconSize: 20,
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
              iconSize: 20,
            ),
          ],
        ));
  }
}
