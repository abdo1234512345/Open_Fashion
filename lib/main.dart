import 'package:device_preview/device_preview.dart';
import 'package:fashion/core/helper/on_generate_routes.dart';
import 'package:fashion/features/Home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    enabled: false,
    builder: (context) => const FashionApp(), // Wrap your app
  ),
);

class FashionApp extends StatelessWidget {
  const FashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      onGenerateRoute: onGenerateRoutes,
      debugShowCheckedModeBanner: false,

      // initialRoute: PlaceOrderView.routeName,
      home: HomeView(),
    );
  }
}
