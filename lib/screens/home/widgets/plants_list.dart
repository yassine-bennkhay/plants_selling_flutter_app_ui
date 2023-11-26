import 'package:flutter/material.dart';
import 'package:planting_app/screens/home/widgets/plant_item.dart';

import '../../../models/plant.dart';
import '../../plant_details/plant_details.dart';

class PlantsList extends StatelessWidget {
  PlantsList({super.key});
  final List<Plant> plants = Plant.getAllPlants();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlantDetails(
                          singlePlant: plants[index],
                        )));
              },
              child: PlantItem(plant: plants[index])),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: plants.length),
    );
  }
}
