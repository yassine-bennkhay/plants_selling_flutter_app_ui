import 'package:flutter/material.dart';
import 'package:planting_app/utils/app_colors.dart';
import 'package:planting_app/utils/app_images.dart';
import 'package:planting_app/utils/app_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            AppStrings.bigHeadline,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.greyElementColor,
            ),
            child: Image.asset(
              AppImages.userAvatar,
            ),
          )
        ],
      ),
    );
  }
}
