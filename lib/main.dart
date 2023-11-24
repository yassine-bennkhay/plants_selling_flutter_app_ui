import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planting_app/screens/home/home.dart';

import 'utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planting app',
      theme: ThemeData(
          fontFamily: "Roboto",
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: AppColors.backgroundColor),
      home: const HomeScreen(),
    );
  }
}
