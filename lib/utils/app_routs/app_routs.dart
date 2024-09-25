
import 'package:flutter/material.dart';
import 'package:shopnow/screen/add_adress_screen/view/newadress_screeen.dart';
import 'package:shopnow/screen/category/view/category_screen.dart';
import 'package:shopnow/screen/desh/view/desh_screen.dart';
import 'package:shopnow/screen/home/view/home_screen.dart';
import 'package:shopnow/screen/product/view/product_screen.dart';
import 'package:shopnow/screen/search/view/search_screen.dart';
import 'package:shopnow/screen/signIn/view/sign_in_screen.dart';
import 'package:shopnow/screen/signup/view/sing_up_screen.dart';

import 'package:shopnow/screen/splash/view/splash_screen.dart';
import 'package:shopnow/screen/user/view/user_screen.dart';

Map<String, WidgetBuilder> app_routs = {

  "/": (context) => const SplashScreen(),
  "signin": (context) => const SignInScreen(),
  "signup": (context) => const  SingUpScreen(),
  "dash": (context) => const DeshScreen(),
  "new":(context) => const NewAddressScreen(),
  "home": (context) => const HomeScreen(),
  "product": (context) => const ProductScreen(),
  "category": (context) => const CategoryScreen(),
  "search": (context) => const SearchScreen(),
  "user": (context) => const UserScreen(),
};
