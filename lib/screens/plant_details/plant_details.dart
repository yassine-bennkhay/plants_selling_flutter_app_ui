import 'package:flutter/material.dart';
import 'package:planting_app/models/plant.dart';
import 'package:planting_app/screens/plant_details/first_half_details.dart';
import 'package:planting_app/screens/plant_details/second_half_details.dart';

import '../../utils/styles.dart';

class PlantDetails extends StatelessWidget {
  const PlantDetails({super.key, required this.singlePlant});
  final Plant singlePlant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstHalfDetails(
            plant: singlePlant,
          ),
          SecondHalfDetails(
            singlePlant: singlePlant,
          ),
        ],
      )),
      bottomSheet: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: greyStyle,
                    ),
                    Text(
                      "\$${singlePlant.price.toString()}",
                      style: priceStyle,
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  child: const Text(
                    "Checkout",
                    style: TextStyle(
                        letterSpacing: 2.0, color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )),
    );
  }
}
