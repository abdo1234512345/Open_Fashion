import 'package:fashion/core/helper/on_generate_routes.dart';
import 'package:fashion/features/Home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FashionApp());
}

class FashionApp extends StatelessWidget {
  const FashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.routeName,
    );
  }
}
