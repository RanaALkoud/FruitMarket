import 'package:flutter/material.dart';

import 'package:vegetables_shop/Features/on_Bording/presentation/widgets/page_view_item.dart';

class CustumPageView extends StatelessWidget {
  const CustumPageView({Key? key,required this.pageController,}) : super(key: key);
final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    
    return PageView(
      controller: pageController,
      
      children: [
       
        PageViewItem(
          image: 'assessts/images/onboarding1.png',
          title: 'E Shopping',
          subTitle: 'Explore top organic frutis & grab them',
        ),

          PageViewItem(
          image: 'assessts/images/onboarding2.png',
          title: 'Delivery on the way ',
          subTitle: 'Get you order by speed deliery',
        ),

          PageViewItem(
          image: 'assessts/images/onboarding3.png',
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your place',
        ),
      ],
    );
  }
}
