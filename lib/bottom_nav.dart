import 'package:flutter/material.dart';
import 'package:uidesign/nav_screens/account.dart';
import 'package:uidesign/nav_screens/cart.dart';
import 'package:uidesign/nav_screens/explore.dart';
import 'package:uidesign/nav_screens/favorite.dart';
import 'package:uidesign/nav_screens/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  List screens = [
    const HomePage(),
    const Explore(),
    const Cart(),
    const Favorite(),
    const Account()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        height: 75,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,  
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 25),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined, size: 25),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, size: 25),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 25),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account_sharp, size: 25),
              label: 'Account',
            ),
          ],
          selectedFontSize: 15,
          selectedItemColor: Colors.orange,    
          unselectedItemColor: const Color.fromRGBO(109, 56, 5, 1),  
          showUnselectedLabels: true,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;  
            });
          },
        ),
     ),
);
}
}