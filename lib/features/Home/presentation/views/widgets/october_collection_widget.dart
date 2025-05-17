import 'package:fashion/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OctoberCollection extends StatelessWidget {
  const OctoberCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          left: 0,
          right: 0,

          child: SvgPicture.asset(Assets.assetsTexts10),
        ),
        Positioned(
          top: 40,
          left: 0,
          right: 0,

          child: SvgPicture.asset(Assets.assetsTextsOctober),
        ),
        Positioned(
          top: 85,
          left: 0,
          right: 0,

          child: SvgPicture.asset(Assets.assetsTextsCollection),
        ),
      ],
    );
  }
}
