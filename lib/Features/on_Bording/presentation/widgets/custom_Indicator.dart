import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:vegetables_shop/core/constant.dart';

class Custom_Indicator extends StatelessWidget {
  const Custom_Indicator({ Key? key,required this.dotsIndex, }) : super(key: key);
  final double? dotsIndex;
  @override
  Widget build(BuildContext context) {
    return   DotsIndicator(
         dotsCount: 3,
         decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: kMainColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
          side: BorderSide(color:kMainColor),)
         ),
        position: dotsIndex!.toInt(), );
  }
}
