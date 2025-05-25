import 'package:fashion/core/constants/assets.dart';
import 'package:fashion/core/constants/colors.dart';
import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:fashion/features/Product_details/presentation/views/widgets/custom_quantity_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomCartWidget extends StatefulWidget {
  const CustomCartWidget({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.descripation,
    required this.onChange,
  });
  final String image, name, descripation;
  final Function(int) onChange;
  final int price;
  @override
  State<CustomCartWidget> createState() => _CustomCartWidgetState();
}

class _CustomCartWidgetState extends State<CustomCartWidget> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Image.asset(widget.image, width: 120),
        Gap(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Gap(10),
            CustomText(
              text: widget.name.toUpperCase(),
              letterSpacing: 4,
              color: AppColors.primaryColor,
            ),
            Gap(10),
            SizedBox(
              width: width * .5,
              child: CustomText(
                text: widget.descripation.toUpperCase(),
                letterSpacing: 3,
                color: AppColors.primaryColor,
                fontSize: 11,
              ),
            ),
            Gap(30),
            Row(
              children: [
                CustomQuantityWidget(
                  image: Assets.assetsSvgsMin,
                  ontap: () {
                    setState(() {
                      if (number > 1) {
                        number--;
                        widget.onChange(number);
                      }
                    });
                  },
                ),
                Gap(12),
                CustomText(
                  text: number.toString(),
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                Gap(12),
                CustomQuantityWidget(
                  image: Assets.assetsSvgsPlus,
                  ontap: () {
                    setState(() {
                      number++;
                      widget.onChange(number);
                    });
                  },
                ),
              ],
            ),
            Gap(30),
            CustomText(
              text: '\$ ${widget.price.toString()}',
              color: Colors.red.shade200,
              fontSize: 22,
            ),
          ],
        ),
      ],
    );
  }
}
