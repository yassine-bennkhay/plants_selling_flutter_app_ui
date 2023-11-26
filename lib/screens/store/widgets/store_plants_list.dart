import 'package:flutter/material.dart';
import 'package:planting_app/utils/app_colors.dart';
import 'package:planting_app/utils/styles.dart';

import '../../../models/plant.dart';
import '../../../utils/app_images.dart';

class StorePlantsList extends StatelessWidget {
  StorePlantsList({super.key});
  final List<Plant> plants = Plant.getAllPlants();
  Widget generateStarRating(double rating) {
    rating = rating.clamp(0.0, 5.0);

    int fullStars = rating.floor();
    double remaining = rating - fullStars;

    List<Widget> starWidgets = [];

    for (int i = 0; i < fullStars; i++) {
      starWidgets
          .add(const Icon(Icons.star, size: 16, color: AppColors.primaryColor));
    }

    if (remaining > 0) {
      starWidgets.add(
          const Icon(Icons.star_half, size: 16, color: AppColors.primaryColor));
    }

    return Row(
      children: starWidgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Container(
                height: 140,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(AppImages.background),
                        ),
                        Image.asset(
                          plants[index].imageUrl,
                          width: 80,
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            plants[index].title,
                            style: titleStyle,
                          ),
                          Text(
                            plants[index].category,
                            style: greyStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              generateStarRating(plants[index].rating),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(plants[index].rating.toString())
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "\$${plants[index].price.toString()}",
                                style: priceStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.primaryColor),
                        child: const Center(
                            child: Text(
                          "Buy",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                height: 12,
              ),
          itemCount: plants.length),
    );
  }
}
