import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.yellow.shade900,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'HOME'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/explore.svg',
                ),
                label: 'EXPLORE'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/shop.svg',
                ),
                label: 'SHOP'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/cart.svg',
                ),
                label: 'CART'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                ),
                label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/account.svg',
                ),
                label: 'ACCOUNT'),
          ]),
    );
  }
}
