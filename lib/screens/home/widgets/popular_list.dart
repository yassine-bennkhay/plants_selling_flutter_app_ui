import 'package:flutter/material.dart';

import '../../../models/plant.dart';
import '../../../utils/app_colors.dart';

class PopularList extends StatelessWidget {
  PopularList({super.key});
  final List<Plant> plants = Plant.getAllPlants();

  @override
  Widget build(BuildContext context) {
    final List<Plant> popularPlants =
        plants.where((element) => element.isPopular == true).toList();
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        height: 100,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(10),
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        popularPlants[index].imageUrl,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            popularPlants[index].category,
                            style: const TextStyle(
                                color: AppColors.greyElementColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            popularPlants[index].title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "\$${popularPlants[index].price.toString()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                ),
            separatorBuilder: (_, index) => const SizedBox(
                  width: 10,
                ),
            itemCount: popularPlants.length));
  }
}
