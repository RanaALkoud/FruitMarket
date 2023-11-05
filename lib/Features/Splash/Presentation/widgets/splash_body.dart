
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:vegetables_shop/Features/on_Bording/presentation/on_bording_view.dart';
import 'package:vegetables_shop/core/utils/size_config.dart';



class SpalshBody  extends StatefulWidget {
  const SpalshBody ({Key?key}):super(key:key);

  @override
  State<SpalshBody > createState() => _SpalshBody();
}



class _SpalshBody extends State<SpalshBody > with SingleTickerProviderStateMixin{

AnimationController? animatedContainer;
Animation<double>? fadingAnimation;




  @override
void initState() {
  super.initState();
  animatedContainer =AnimationController(vsync:this, duration: const Duration(milliseconds: 600));

  fadingAnimation=Tween<double>(begin: .2,end: 1).animate(animatedContainer!) ;
  
  animatedContainer?.repeat(reverse: true);
  
  // ..addListener(() {
  //   setState(() {
  //     if(animatedContainer!.isCompleted){
  //       animatedContainer?.repeat(reverse: true);
  //     }
  //   });
  // });

  // animatedContainer?.forward();
  doToNextView();

}
@override
void dispose(){
  animatedContainer?.dispose();
  super.dispose();
}
 @override
  Widget build(BuildContext context) {
      SizeConfig().init(context);
    return   Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
           
                children: [
                  const Spacer(),
                   SizedBox(
                    width: 238,
                    height: 44,
                      child:Center(
                            child:  FadeTransition(
                        opacity: fadingAnimation!,
                            child: Text(
                              'Fruit Market',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontFamily: 'fortune',
                                // fontWeight: FontWeight.bold,
                            
                                height: 0,
                              ),
                            ),
                          ),)
                      //  AnimatedBuilder(
                      //   animation: fadingAnimation!,
                      //   builder:(context, _)=> Opacity(
                      //     opacity: fadingAnimation?.value,
                      //     child: Center(
                      //       child: Text(
                      //         'Fruit Market',
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 50,
                      //           fontFamily: 'fortune',
                      //           // fontWeight: FontWeight.bold,
                            
                      //           height: 0,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    
                  ),
                  const Spacer(),
                 Container(
          width: 438,
          height: 308,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assessts/images/splah_view_image.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
                ],
              ),
    );
     
        
  
  }
  void doToNextView(){
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>OnBoardingView(),transition: Transition.fade);
    });
  }
  }
