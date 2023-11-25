import 'package:flutter/material.dart';
import 'package:planting_app/utils/styles.dart';

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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      plant.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(plant.category, style: greyStyle),
          const SizedBox(
            height: 5,
          ),
          Text(
            plant.title,
            style: titleStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price",
                    style: greyStyle,
                  ),
                  Text(
                    "\$${plant.price.toString()}",
                    style: priceStyle,
                  ),
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
