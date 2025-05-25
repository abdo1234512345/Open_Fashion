import 'package:fashion/core/constants/assets.dart';
import 'package:fashion/core/constants/colors.dart';
import 'package:fashion/core/widgets/custom_app_bar.dart';
import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:fashion/features/Product_details/presentation/views/widgets/custom_botton.dart';
import 'package:fashion/features/Product_details/presentation/views/widgets/custom_cart_widget.dart';
import 'package:fashion/features/Product_details/presentation/views/widgets/custom_header.dart';
import 'package:fashion/features/Product_details/presentation/views/widgets/custom_promo_delivery_widget.dart';
import 'package:fashion/features/placeOrder/presentation/views/widgets/place_order_view_body.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.descripation,
  });
  final String? name, image, descripation;
  final int price;

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  int selectedQuantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(isblack: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            CustomHeader(title: 'CheckOut'),
            CustomCartWidget(
              image: widget.image!,
              name: widget.name!,
              price: widget.price,
              descripation: widget.descripation!,
              onChange: (v) {
                setState(() {
                  selectedQuantity = v;
                });
              },
            ),
            Gap(20),
            CustomPromoDeliveryWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Est. Total', color: AppColors.primaryColor),
                CustomText(
                  text: '\$ ${(widget.price) * selectedQuantity}',
                  color: Colors.red.shade200,
                ),
              ],
            ),
            Gap(20),
            CustomBotton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (c) => PlaceOrderViewBody(
                          descripation: widget.descripation,
                          image: widget.image,
                          name: widget.name,
                          price: widget.price,
                          quantity: selectedQuantity,
                          totalPrice: (widget.price) * selectedQuantity,
                        ),
                  ),
                );
              },
              text: 'Checkout',
              image: Assets.assetsSvgsShoppingbag,
              isSVG: true,
            ),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
