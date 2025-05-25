import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:fashion/features/Home/presentation/views/data/models/productModel/products_model.dart';
import 'package:fashion/features/Product_details/presentation/views/checkout_view_body.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.productItem});

  final ProductsModel productItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (c) => CheckoutViewBody(
                  image: productItem.image,
                  name: productItem.name,
                  price: productItem.price,
                  descripation: productItem.descripation,
                ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(productItem.image),
          Gap(10),
          CustomText(text: productItem.name),
          CustomText(text: productItem.descripation, color: Colors.grey),
          Gap(9),
          CustomText(
            text: '\$ ${productItem.price.toString()}',
            color: Colors.red.shade200,
            fontSize: 20,
          ),
        ],
      ),
    );
  }
}
