import 'package:fashion/core/constants/assets.dart';
import 'package:fashion/core/constants/colors.dart';
import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(10),
        Center(
          child: CustomText(
            fontSize: 20,
            text: title.toUpperCase(),
            letterSpacing: 4,
            color: AppColors.primaryColor,
          ),
        ),
        Gap(10),
        Image.asset(Assets.assetsSvgsLine, width: 190, color: Colors.black),
        Gap(20),
      ],
    );
  }
}
