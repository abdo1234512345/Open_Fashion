import 'package:fashion/core/constants/assets.dart';
import 'package:fashion/core/constants/colors.dart';
import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomPromoDeliveryWidget extends StatelessWidget {
  const CustomPromoDeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Gap(20),
        Row(
          children: [
            SvgPicture.asset(Assets.assetsSvgsPromo, width: 28),
            Gap(20),
            CustomText(
              text: 'Add Promo Code',
              color: AppColors.primaryColor,
              letterSpacing: 2,
            ),
            Gap(5),
          ],
        ),

        Gap(10),

        Divider(),
        Gap(20),
        Row(
          children: [
            SvgPicture.asset(Assets.assetsSvgsDelivery, width: 25),
            Gap(20),
            CustomText(
              text: 'Delivery',
              color: AppColors.primaryColor,
              letterSpacing: 2,
            ),
            Spacer(),
            CustomText(text: 'Free', color: AppColors.primaryColor),
            Gap(5),
          ],
        ),
        Gap(10),
        Divider(),
      ],
    );
  }
}
