import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

List<BottomNavigationBarItem> navBarItems = [
  BottomNavigationBarItem(
    icon: SvgPicture.asset((AppImages.home)),
    activeIcon: SvgPicture.asset(
      (AppImages.home),
      colorFilter:
          const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
    ),
    label: "Home",
  ),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(
        (AppImages.favorite),
      ),
      activeIcon: SvgPicture.asset(
        (AppImages.favorite),
        colorFilter:
            const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
      ),
      label: "Favorite"),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(
        (AppImages.scan),
      ),
      activeIcon: SvgPicture.asset(
        (AppImages.scan),
        colorFilter:
            const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
      ),
      label: "Scan"),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(
        (AppImages.cart),
      ),
      activeIcon: SvgPicture.asset(
        (AppImages.cart),
        colorFilter:
            const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
      ),
      label: "Cart"),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(
        (AppImages.profile),
      ),
      activeIcon: SvgPicture.asset(
        (AppImages.profile),
        colorFilter:
            const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
      ),
      label: "Profile"),
];
