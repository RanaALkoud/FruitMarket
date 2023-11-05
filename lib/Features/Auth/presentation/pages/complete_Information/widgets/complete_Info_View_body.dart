import 'package:flutter/material.dart';
import 'package:vegetables_shop/Features/Auth/presentation/pages/complete_Information/widgets/CompleteInf_View_Item.dart';
import 'package:vegetables_shop/core/widgets/custom_Buttons.dart';
import 'package:vegetables_shop/core/widgets/space_widget.dart';

class CompleteInformationViewBody extends StatelessWidget {
 const CompleteInformationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          VerticalSpace(10),
          CompleteInformationViewItem(
            text: 'Enter your name',
          ),
          VerticalSpace(2),
          CompleteInformationViewItem(
            text: 'Enter your phone number',
          ),
          VerticalSpace(2),
          CompleteInformationViewItem(
            maxLines: 5,
            text: 'Enter your address',
          ),
          VerticalSpace(5),
          CustomGeneralButton(
            text: 'Login',
          )
        ],
      ),
    );
  }
}