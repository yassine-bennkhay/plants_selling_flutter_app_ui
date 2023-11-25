import 'package:flutter/material.dart';
import 'package:planting_app/screens/store/widgets/store_app_bar.dart';
import 'package:planting_app/screens/store/widgets/store_plants_list.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const StoreAppBar(),
        Expanded(child: StorePlantsList()),
      ]),
    );
  }
}
