import 'package:fashion/features/Home/presentation/views/data/models/coverModel/cover_model.dart';
import 'package:fashion/features/Home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: CoverModel.coverModel.length,
        itemBuilder: (context, index) {
          final coverItem = CoverModel.coverModel[index];
          return ListViewItem(coverItem: coverItem);
        },
      ),
    );
  }
}
