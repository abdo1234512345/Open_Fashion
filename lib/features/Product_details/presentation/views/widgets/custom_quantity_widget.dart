import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomQuantityWidget extends StatelessWidget {
  const CustomQuantityWidget({super.key, this.ontap, required this.image});
  final Function()? ontap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade400, width: 1),
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
