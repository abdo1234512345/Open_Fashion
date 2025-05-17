import 'package:fashion/features/Home/presentation/views/data/models/productModel/products_model.dart';
import 'package:fashion/features/Home/presentation/views/widgets/grid_view_item.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: ProductsModel.productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 15,
        childAspectRatio: .50,
      ),

      itemBuilder: (context, index) {
        final productItem = ProductsModel.productList[index];
        return GridViewItem(productItem: productItem);
      },
    );
  }
}
