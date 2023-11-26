import 'package:flutter/material.dart';

import '../../models/plant.dart';

class PlantDimensions extends StatelessWidget {
  const PlantDimensions({super.key, required this.plant});
  final Plant plant;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }

  ListTile _buildDimensionTile({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(icon),
      ),
      title: Text(title),
      subtitle: Text(value),
    );
  }
}
