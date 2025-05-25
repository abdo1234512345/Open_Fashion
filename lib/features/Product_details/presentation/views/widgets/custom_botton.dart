import 'package:fashion/core/constants/colors.dart';
import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    this.onTap,
    required this.text,
    this.image,
    required this.isSVG,
  });
  final Function()? onTap;
  final String? text, image;
  final bool isSVG;
  @override
  Widget build(BuildContext context) {
    bool isSvgShow = isSVG;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: AppColors.primaryColor,
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 16),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isSvgShow
                  ? SvgPicture.asset(image!, width: 20)
                  : SizedBox.shrink(),
              Gap(10),
              CustomText(text: text!.toUpperCase(), fontSize: 18),
            ],
          ),
        ),
      ),
    );
  }
}
