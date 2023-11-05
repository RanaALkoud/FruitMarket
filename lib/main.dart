import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Features/Splash/Presentation/splash_view.dart';

void main() {
  runApp(const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );

  }
}




 