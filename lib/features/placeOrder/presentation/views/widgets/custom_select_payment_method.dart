import 'package:fashion/core/constants/colors.dart';
import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:fashion/features/placeOrder/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomSelectPaymentMethod extends StatelessWidget {
  const CustomSelectPaymentMethod({super.key, required this.totalPrice});
  final int totalPrice;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: CustomContainer(
            text: 'Select Payment Method',
            iconData: Icons.keyboard_arrow_down_sharp,
            isFree: false,
          ),
        ),
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: 'Total', color: AppColors.primaryColor),
            CustomText(text: '\$ $totalPrice', color: Colors.red.shade200),
          ],
        ),
      ],
    );
  }
}
