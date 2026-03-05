import 'package:bitwise/core/models/transaction_model.dart';
import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class TransactionTile extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionTile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          /// LEFT SECTION
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.tertiary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    transaction.icon,
                    width: 25,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      transaction.title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      transaction.date,
                      style: const TextStyle(
                        fontSize: 10,
                        color: AppColors.tertiary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// DIVIDER
          Container(
            height: 35,
            width: 1,
            color: AppColors.primary,
          ),

          /// CATEGORY
          Expanded(
            flex: 2,
            child: Center(
              child: Text(transaction.category, style: const TextStyle(fontSize: 11)),
            ),
          ),

          /// DIVIDER
          Container(
            height: 35,
            width: 1,
            color: AppColors.primary,
          ),

          /// AMOUNT
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                transaction.amount,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.tertiary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
