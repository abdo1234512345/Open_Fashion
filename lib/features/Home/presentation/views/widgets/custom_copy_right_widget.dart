import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomCopyRightWidget extends StatelessWidget {
  const CustomCopyRightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade400),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30, top: 10),
        child: Center(
          child: CustomText(
            height: 2.5,
            maxLines: 3,
            text: 'Copyright© OpenUI All Rights Reserved.',
          ),
        ),
      ),
    );
  }
}
