import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({super.key, this.saveAddress, this.onTap});
  final dynamic saveAddress;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text:
                    '${saveAddress['first'] + saveAddress['last']}'
                        .toUpperCase(),
                fontSize: 20,
                color: Colors.black,
              ),
              Gap(15),
              CustomText(
                text:
                    '${saveAddress['address']} . ${saveAddress['city']}'
                        .toUpperCase(),
                fontSize: 17,
                color: Colors.black38,
              ),
              Gap(10),
              CustomText(
                text: '${saveAddress['state']}'.toUpperCase(),
                fontSize: 17,
                color: Colors.black38,
              ),
              Gap(10),

              CustomText(
                text: '${saveAddress['phone']}'.toUpperCase(),
                fontSize: 17,
                color: Colors.black38,
              ),
              Gap(20),
            ],
          ),
          Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey),
        ],
      ),
    );
  }
}
