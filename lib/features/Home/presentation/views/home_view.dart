import 'package:fashion/core/constants/colors.dart';
import 'package:fashion/core/widgets/custom_app_bar.dart';
import 'package:fashion/features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'home_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isblack: true),
      backgroundColor: AppColors.primaryColor,
      body: HomeViewBody(),
    );
  }
}
