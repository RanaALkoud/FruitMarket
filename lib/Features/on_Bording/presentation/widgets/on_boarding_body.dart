
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:vegetables_shop/Features/Auth/presentation/pages/login/login_view.dart';
import 'package:vegetables_shop/Features/on_Bording/presentation/widgets/custom_Indicator.dart';
import 'package:vegetables_shop/Features/on_Bording/presentation/widgets/custum_page_view.dart';
import 'package:vegetables_shop/core/utils/size_config.dart';
import 'package:vegetables_shop/core/widgets/custom_Buttons.dart';



class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
PageController? pageController;
@override
void initState() {
  pageController=PageController(
    initialPage: 0
  )..addListener(() {setState(() {
  
    
  });});
  super.initState();
  
}

  @override
  Widget build(BuildContext context) {



    return  Stack(
      children: [

        CustumPageView(pageController: pageController,),

        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 25,
          child:Custom_Indicator(
            dotsIndex:(pageController!.hasClients) ? pageController?.page: 0,
          ),
       
        ),
        Visibility(
          visible: pageController!.hasClients? (pageController?.page==2 ? false :true):true,
          child: Positioned(
            top:SizeConfig.defaultSize! * 10,
            right: 32,
            child: Text("Skip",style: TextStyle(fontFamily: "winter_poppins",fontSize: 20,color:Color(0xff898989) ,
            ),
            textAlign: TextAlign.left,),
          ),
        ),

        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: () {
              if(pageController!.page!< 2)
              {
                pageController!.nextPage(duration: Duration(microseconds: 500), curve: Curves.easeIn);
              }
              else{
                Get.to(()=>Login_View(),transition:Transition.leftToRight, duration: Duration(milliseconds: 500));
              }
            },
            text: pageController!.hasClients? (pageController?.page==2 ? 'Get Started' :'Next'):'Next',))
      ],
    );
  }
}