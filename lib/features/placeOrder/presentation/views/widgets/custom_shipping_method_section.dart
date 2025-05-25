import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:fashion/features/placeOrder/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomShippingMethodSection extends StatelessWidget {
  const CustomShippingMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        CustomText(
          text: 'Shipping Method'.toUpperCase(),
          fontSize: 16,
          color: Colors.black38,
        ),
        Gap(10),

        Padding(
          padding: const EdgeInsets.all(12),
          child: CustomContainer(
            text: 'Pickup To Store',
            iconData: Icons.keyboard_arrow_down_sharp,
            isFree: true,
          ),
        ),
      ],
    );
  }
}
