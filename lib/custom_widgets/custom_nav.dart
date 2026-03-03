import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNav({super.key, required this.currentIndex, required this.onTap});

  final List<String> icons = [
    'assets/images/home_menu.png',
    'assets/images/analysis_menu.png',
    'assets/images/transaction_menu.png',
    'assets/images/category_menu.png',
    'assets/images/profile_menu.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.menuBg,
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(icons.length, (index) {
          final isActive = index == currentIndex;
          return GestureDetector(
            onTap: () => onTap(index),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: isActive ? AppColors.primary : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  icons[index],
                  width: 30,
                  height: 30,
                  color: isActive ? AppColors.textColor : AppColors.textColor,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
