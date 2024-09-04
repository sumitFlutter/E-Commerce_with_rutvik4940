import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() => Get.offAllNamed('dash'),);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body:    Center(
          child: Text(
            "SHOPNOW.",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
          )),

    );
  }
}
