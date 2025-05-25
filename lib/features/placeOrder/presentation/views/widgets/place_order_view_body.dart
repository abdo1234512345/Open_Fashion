import 'package:fashion/core/widgets/custom_app_bar.dart';
import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:fashion/features/Product_details/presentation/views/widgets/custom_botton.dart';
import 'package:fashion/features/Product_details/presentation/views/widgets/custom_header.dart';
import 'package:fashion/features/placeOrder/presentation/views/widgets/custom_select_payment_method.dart';
import 'package:fashion/features/placeOrder/presentation/views/widgets/custom_shipping_address_section.dart';
import 'package:fashion/features/placeOrder/presentation/views/widgets/custom_shipping_method_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlaceOrderViewBody extends StatelessWidget {
  const PlaceOrderViewBody({
    super.key,
    this.image,
    this.name,
    this.descripation,
    this.price,
    this.quantity,
    this.totalPrice,
  });
  final String? image, name, descripation;
  final int? quantity, totalPrice, price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isblack: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(title: 'Checkout'),
              CustomText(
                text: 'Shipping Address'.toUpperCase(),
                fontSize: 16,
                color: Colors.black38,
              ),

              CustomShippingAddressSection(),
              Gap(10),
              CustomShippingMethodSection(),
              Gap(10),
              CustomText(
                text: 'payment Method'.toUpperCase(),
                fontSize: 16,
                color: Colors.black38,
              ),
              Gap(10),
              CustomSelectPaymentMethod(totalPrice: totalPrice!),

              Gap(30),
              CustomBotton(onTap: () {}, text: 'Place Order', isSVG: false),
            ],
          ),
        ),
      ),
    );
  }
}
