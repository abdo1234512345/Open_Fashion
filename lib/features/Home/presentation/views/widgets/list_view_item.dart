import 'package:fashion/core/widgets/custom_text_widget.dart';
import 'package:fashion/features/Home/presentation/views/data/models/coverModel/cover_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.coverItem});

  final CoverModel coverItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(coverItem.image, height: 350, fit: BoxFit.cover),
          Gap(10),

          CustomText(text: coverItem.name.toUpperCase()),
        ],
      ),
    );
  }
}
