import 'package:flutter/material.dart';
import 'package:planting_app/screens/home/home.dart';
import 'package:planting_app/screens/root/widgets/nav_bar_items.dart';
import 'package:planting_app/screens/store/store.dart';
import 'package:planting_app/utils/app_colors.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = <Widget>[
    const HomeScreen(),
    const Center(
      child: Text("Favorite"),
    ),
    const Center(
      child: Text("Scan"),
    ),
    const StoreScreen(),
    const Center(
      child: Text("Profile"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: AppColors.backgroundColor,
        showSelectedLabels: false,
        selectedItemColor: AppColors.primaryColor,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTaped,
        items: navBarItems,
      ),
    );
  }
}
