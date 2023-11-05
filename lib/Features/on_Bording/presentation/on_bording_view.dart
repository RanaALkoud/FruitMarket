import 'package:flutter/material.dart';
import 'package:vegetables_shop/Features/on_Bording/presentation/widgets/on_boarding_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingBody(),
    );
  }
}