import 'package:flutter/material.dart';
import 'package:planting_app/utils/app_colors.dart';
import 'package:planting_app/utils/app_images.dart';
import 'package:planting_app/utils/app_strings.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            cursorColor: AppColors.greyElementColor,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: AppStrings.searchPlants,
                prefixIcon: Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    AppImages.search,
                    width: 20,
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none)),
          )),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 45,
              height: 45,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.containerColor,
              ),
              child: Image.asset(
                AppImages.filter,
                width: 20,
                height: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
