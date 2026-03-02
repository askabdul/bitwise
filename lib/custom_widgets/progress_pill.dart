import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class ProgressPill extends StatelessWidget {
  final double percent; // 0.0 to 1.0

  const ProgressPill({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      decoration: BoxDecoration(
        color: AppColors.textColor, // base = filled color
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          // WHITE REMAINING PART (RIGHT SIDE)
          Align(
            alignment: Alignment.centerRight,
            child: FractionallySizedBox(
              widthFactor: 1 - percent, // remaining
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),

          // TEXT
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LEFT (inside green)
                Center(
                  child: Text(
                    "${(percent * 100).toInt()}%",
                    style: const TextStyle(
                      color: AppColors.secondary,
                      fontWeight: FontWeight.normal,
                        fontSize: 12,

                    ),
                  ),
                ),

                // RIGHT (inside white)
                const Text(
                  "\$20,000.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontStyle: FontStyle.italic
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}