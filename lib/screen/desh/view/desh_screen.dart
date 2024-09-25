import 'package:flutter/material.dart';
import 'package:shopnow/screen/cart/view/cart_screen.dart';
import 'package:shopnow/screen/category/view/category_screen.dart';
import 'package:shopnow/screen/home/view/home_screen.dart';
import 'package:shopnow/screen/search/view/search_screen.dart';
import 'package:shopnow/screen/user/view/user_screen.dart';

class DeshScreen extends StatefulWidget {
  const DeshScreen({super.key});

  @override
  State<DeshScreen> createState() => _DeshScreenState();
}

class _DeshScreenState extends State<DeshScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomeScreen(),
    CategoryScreen(),
    SearchScreen(),
    CartScreen(),
    UserScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: const Text('Bottom Navigation Bar Example'),
      // ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
