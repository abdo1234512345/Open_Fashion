import 'package:fashion/core/constants/assets.dart';
import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class YouMaySection extends StatelessWidget {
  const YouMaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: 'You may also like'.toUpperCase(),
          color: Colors.grey,
          fontSize: 26,
        ),
        Gap(10),
        Image.asset(Assets.assetsSvgsLine, width: 200),
      ],
    );
  }
}
