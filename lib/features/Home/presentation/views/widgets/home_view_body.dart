import 'package:fashion/core/constants/assets.dart';
import 'package:fashion/features/Home/presentation/views/widgets/custom_about.dart';
import 'package:fashion/features/Home/presentation/views/widgets/custom_copy_right_widget.dart';
import 'package:fashion/features/Home/presentation/views/widgets/custom_grid_view.dart';
import 'package:fashion/features/Home/presentation/views/widgets/custom_list_view.dart';
import 'package:fashion/features/Home/presentation/views/widgets/october_collection_widget.dart';
import 'package:fashion/features/Home/presentation/views/widgets/you_may_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OctoberCollection(),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Gap(120),
                    Image.asset(Assets.assetsCoverCover1),
                    Gap(20),
                    CustomGridView(),
                    Gap(5),
                    YouMaySection(),
                    Gap(40),

                    CustomListView(),
                    CustomAbout(),
                    Gap(20),
                  ],
                ),
              ),
              CustomCopyRightWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
