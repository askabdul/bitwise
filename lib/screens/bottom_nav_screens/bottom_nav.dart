import 'package:bitwise/screens/bottom_nav_screens/analysis_screen.dart';
import 'package:bitwise/screens/bottom_nav_screens/category_screen.dart';
import 'package:bitwise/screens/bottom_nav_screens/profile_screen.dart';
import 'package:bitwise/screens/bottom_nav_screens/transaction_screen.dart';
import 'package:flutter/material.dart';

import '../../custom_widgets/custom_nav.dart';
import '../home_screen.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  // final PersistentTabController _controller =
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    const AnalysisScreen(),
    const TransactionScreen(),
    const CategoryScreen(),
    const ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Your list of screens
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
