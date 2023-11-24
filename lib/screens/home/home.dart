import 'package:flutter/material.dart';
import 'package:planting_app/screens/home/widgets/plant_categories.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/search_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            SearchFilter(),
            PlantCategories(),
          ],
        ),
      ),
    );
  }
}
