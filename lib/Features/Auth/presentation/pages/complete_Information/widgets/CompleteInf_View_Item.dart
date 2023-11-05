import 'package:flutter/material.dart';
import 'package:vegetables_shop/core/widgets/custum_TextFileds.dart';
import 'package:vegetables_shop/core/widgets/space_widget.dart';

class CompleteInformationViewItem extends StatelessWidget {
   const CompleteInformationViewItem({Key? key, required this.text, this.inputType, this.maxLines})
      : super(key: key);
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        const VerticalSpace(2),
        Custum_TextFields(
          maxLines: maxLines,//by defualt =1
          inputType: inputType, onSaved: (value) {  },
        )
      ],
    );
  }
}