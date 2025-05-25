import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
    required this.iconData,
    required this.isFree,
  });
  final String text;
  final IconData iconData;
  final bool isFree;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          CustomText(text: text, color: Colors.black),
          Spacer(),
          isFree
              ? CustomText(text: 'Free', color: Colors.black)
              : SizedBox.shrink(),
          Gap(15),
          Icon(iconData),
        ],
      ),
    );
  }
}
