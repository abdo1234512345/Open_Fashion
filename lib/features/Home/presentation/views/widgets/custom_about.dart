import 'package:fashion/core/constants/assets.dart';
import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';

class CustomAbout extends StatelessWidget {
  const CustomAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Ionicons.logo_twitter, color: Colors.white),
            Gap(30),
            Icon(Ionicons.logo_instagram, color: Colors.white),
            Gap(30),
            Icon(Ionicons.logo_facebook, color: Colors.white),
          ],
        ),
        Gap(20),
        Image.asset(Assets.assetsSvgsLine, width: 190),
        Gap(20),
        CustomText(
          height: 2.5,
          maxLines: 3,
          text:
              'support@openui.desgin \n          +60 825 876 \n 08:00 - 22:00 - Everyday',
        ),
        Gap(20),
        Image.asset(Assets.assetsSvgsLine, width: 190),
        Gap(20),
        CustomText(
          height: 2.5,
          maxLines: 3,
          text: 'About       Contact       Blog ',
        ),
      ],
    );
  }
}
