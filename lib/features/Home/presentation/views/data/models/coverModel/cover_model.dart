import 'package:fashion/core/constants/assets.dart';

class CoverModel {
  final String image, name;

  CoverModel({required this.image, required this.name});
  static List<CoverModel> coverModel = [
    CoverModel(image: Assets.assetsCoverCover3, name: 'Black Collection'),
    CoverModel(image: Assets.assetsCoverCover2, name: 'MADE BY HAEKIM'),
    CoverModel(image: Assets.assetsCoverCover1, name: 'White Collection'),
  ];
}
