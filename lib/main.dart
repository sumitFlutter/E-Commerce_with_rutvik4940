import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopnow/screen/add_adress_screen/view/newadress_screeen.dart';
import 'package:shopnow/utils/app_routs/app_routs.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routs,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const NewAddressScreen(), // Fallback route
      ),

      ),
  );
}
