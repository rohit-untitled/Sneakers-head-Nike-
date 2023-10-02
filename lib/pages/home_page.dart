import 'package:flutter/material.dart';
import 'package:nike/pages/shop_page.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Icon(
                Icons.menu_rounded,
                color: Colors.grey.shade800,
                size: 30,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //logo
              // DrawerHeader(child: Image.asset('lib/images/logo.png'))
              Column(
                children: [
                  DrawerHeader(
                    child: SvgPicture.asset(
                      'lib/images/nike.svg',
                      color: Colors.white,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.grey.shade700,
                    ),
                  ),

                  //other pages

                  const Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        'HOME',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        'ABOUT',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'LOGOUT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
