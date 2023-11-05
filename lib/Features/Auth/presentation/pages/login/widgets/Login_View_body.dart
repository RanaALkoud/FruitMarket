import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:vegetables_shop/Features/Auth/presentation/pages/complete_Information/complete_Info_view.dart';
import 'package:vegetables_shop/core/constant.dart';
import 'package:vegetables_shop/core/utils/size_config.dart';
import 'package:vegetables_shop/core/widgets/custom_Buttons.dart';
import 'package:vegetables_shop/core/widgets/space_widget.dart';

class Login_Body extends StatelessWidget {
  const Login_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
          VerticalSpace(10),
          SizedBox(
            child: Image.asset(kLogo),
            height: SizeConfig.defaultSize! * 20,
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                color: const Color(0xff69a03a),
              ),
              children: [
                TextSpan(
                  text: 'F',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'ruit Market',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
          Expanded(child: SizedBox()),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    color: Color(0xFFdb3236),
                    iconData: Icons.g_mobiledata,
                    text: 'Log in with ',
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    onTap: () {
                      Get.to(() => CompleteInformationView(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft);
                    },
                    color: Color(0xFF4267B2),
                    iconData:Icons.facebook,
                    text: 'Log in with ',
                  ),
                ),
              )
            ],
          ),
          Expanded(child: SizedBox()),
        ],
          ),
      )
    );
  }
}