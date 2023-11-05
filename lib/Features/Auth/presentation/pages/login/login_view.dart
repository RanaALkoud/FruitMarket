import 'package:flutter/material.dart';
import 'package:vegetables_shop/Features/Auth/presentation/pages/login/widgets/Login_View_body.dart';

class Login_View extends StatelessWidget {
  const Login_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login_Body(),
    );
  }
}