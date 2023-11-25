import 'package:flutter/material.dart';
import 'package:planting_app/utils/app_colors.dart';

import '../../../models/plant.dart';
import '../../../utils/app_images.dart';

class PlantItem extends StatelessWidget {
  const PlantItem({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(AppImages.background),
              ),
              Center(
                child: Image.asset(
                  plant.imageUrl,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            plant.category,
            style: const TextStyle(color: AppColors.greyElementColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            plant.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(color: AppColors.greyElementColor),
                  ),
                  Text(
                    "\$${plant.price.toString()}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(40, 40), // Adjust the size as needed
                  shape: const CircleBorder(),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white, // Set the icon color
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
