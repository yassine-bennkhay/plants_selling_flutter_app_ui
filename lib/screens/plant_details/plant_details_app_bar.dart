import 'package:flutter/material.dart';

class PlantAppBar extends StatelessWidget {
  const PlantAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 60,
        left: 25,
        right: 25,
        bottom: 10,
      ),
      child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )),
    );
  }
}
