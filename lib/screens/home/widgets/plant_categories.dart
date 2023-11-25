import 'package:flutter/material.dart';

class PlantCategories extends StatefulWidget {
  const PlantCategories({super.key});

  @override
  State<PlantCategories> createState() => _PlantCategoriesState();
}

class _PlantCategoriesState extends State<PlantCategories> {
  List<String> plantCategories = [
    "All",
    "Indoor",
    "Outdoor",
    "Aromatic",
    "Succulents",
    "Herbs"
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: selected == index
                        ? Theme.of(context).primaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      plantCategories[index],
                      style: TextStyle(
                          color:
                              selected == index ? Colors.white : Colors.grey),
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
          itemCount: plantCategories.length),
    );
  }
}
