import 'package:flutter/material.dart';
import 'package:vegetables_shop/Features/Splash/Presentation/widgets/splash_body.dart';
import 'package:vegetables_shop/core/constant.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainColor,
      //Color(0xff759E3F),
      body: SpalshBody(),
    );
  }
}