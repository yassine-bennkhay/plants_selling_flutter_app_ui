import 'package:flutter/material.dart';
import 'package:planting_app/screens/plant_details/plant_details_app_bar.dart';
import 'package:planting_app/utils/styles.dart';

import '../../models/plant.dart';
import '../../utils/app_colors.dart';

class FirstHalfDetails extends StatelessWidget {
  const FirstHalfDetails({super.key, required this.plant});
  final Plant plant;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          color: AppColors.containerColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 100, left: 25, right: 25, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plant.title,
                      style: titleStyle.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Category",
                      style: greyStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      plant.category,
                      style: titleStyle.copyWith(
                          color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Type",
                      style: greyStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      plant.type,
                      style: titleStyle.copyWith(
                          color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Hero(
                  tag: plant.imageUrl,
                  child: Image.asset(
                    plant.imageUrl,
                  ))
            ],
          ),
        ),
        const PlantAppBar(),
      ],
    );
  }
}
