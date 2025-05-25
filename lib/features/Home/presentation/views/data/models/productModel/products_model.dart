import 'package:fashion/core/constants/assets.dart';

class ProductsModel {
  final String image, descripation, name;
  final int price;

  ProductsModel({
    required this.image,
    required this.price,
    required this.descripation,
    required this.name,
  });
  static List<ProductsModel> productList = [
    ProductsModel(
      image: Assets.assetsProductProduct6,
      price: 100,
      descripation: 'reversible angora cardigan',
      name: 'October',
    ),
    ProductsModel(
      image: Assets.assetsProductProduct1,
      price: 120,
      descripation: 'reversible angora cardigan',
      name: 'October',
    ),
    ProductsModel(
      image: Assets.assetsProductProduct5,
      price: 70,
      descripation: 'reversible angora cardigan',
      name: 'October',
    ),
    ProductsModel(
      image: Assets.assetsProductProduct4,
      price: 80,
      descripation: 'reversible angora cardigan',
      name: 'October',
    ),
    ProductsModel(
      image: Assets.assetsProductProduct2,
      price: 90,
      descripation: 'reversible angora cardigan',
      name: 'October',
    ),
    ProductsModel(
      image: Assets.assetsProductProduct3,
      price: 150,
      descripation: 'reversible angora cardigan',
      name: 'October',
    ),
  ];
}
