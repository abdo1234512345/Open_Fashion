import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:fashion/features/Home/presentation/views/data/models/productModel/products_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.productItem});

  final ProductsModel productItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(productItem.image),
        Gap(10),
        CustomText(text: productItem.name),
        CustomText(text: productItem.descripation, color: Colors.grey),
        Gap(9),
        CustomText(
          text: productItem.price,
          color: Colors.red.shade200,
          fontSize: 20,
        ),
      ],
    );
  }
}
