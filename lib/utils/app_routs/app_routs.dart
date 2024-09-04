import 'package:flutter/cupertino.dart';
import 'package:shopnow/screen/add_adress_screen/view/newadress_screeen.dart';
import 'package:shopnow/screen/category/view/category_screen.dart';
import 'package:shopnow/screen/desh/view/desh_screen.dart';
import 'package:shopnow/screen/home/view/home_screen.dart';
import 'package:shopnow/screen/product/view/product_screen.dart';
import 'package:shopnow/screen/search/view/search_screen.dart';
import 'package:shopnow/screen/splash/view/splash_screen.dart';
import 'package:shopnow/screen/user/view/user_screen.dart';

Map<String, WidgetBuilder> app_routs = {
  "/": (context) => const SplashScreen(),
  "new":(context) => const NewAddressScreen(),
  "dash": (context) => const DeshScreen(),
  "home": (context) => const HomeScreen(),
  "product": (context) => const ProductScreen(),
  "category": (context) => const CategoryScreen(),
  "search": (context) => const SearchScreen(),
  "user": (context) => const UserScreen(),
};
