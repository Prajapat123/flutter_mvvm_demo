import 'package:flutter/material.dart';
import 'package:flutter_mvvm_demo/view_model/services/splash_services.dart';

class SplashCreen extends StatefulWidget {
  const SplashCreen({super.key});

  @override
  State<SplashCreen> createState() => _SplashCreenState();
}

class _SplashCreenState extends State<SplashCreen> {
  SplashServices splashCreen = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashCreen.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Text('Welcome to splash'),
    );
  }
}
