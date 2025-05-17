import 'package:fashion/core/constants/assets.dart';
import 'package:fashion/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.isblack});
  final bool isblack;

  @override
  Widget build(BuildContext context) {
    bool isBlack = isblack;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: AppBar(
        elevation: 0,

        centerTitle: true,
        backgroundColor: isBlack ? AppColors.primaryColor : Colors.white,
        leading: SvgPicture.asset(
          Assets.assetsSvgsMenu,
          color: isBlack ? Colors.white : AppColors.primaryColor,
        ),
        leadingWidth: 25,
        title: SvgPicture.asset(
          Assets.assetsLogoLogoBg,
          color: isBlack ? Colors.white : AppColors.primaryColor,
        ),
        actions: [
          SvgPicture.asset(
            Assets.assetsSvgsSearch,
            color: isBlack ? Colors.white : AppColors.primaryColor,
          ),
          Gap(20),
          SvgPicture.asset(
            Assets.assetsSvgsShoppingbag,
            color: isBlack ? Colors.white : AppColors.primaryColor,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
