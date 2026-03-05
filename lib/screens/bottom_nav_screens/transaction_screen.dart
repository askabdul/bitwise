import 'package:bitwise/core/models/transaction_model.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../custom_widgets/progress_pill.dart';
import '../../custom_widgets/transaction_tile.dart';

class TransactionScreen extends StatelessWidget {
  final GroupedTransactions? groupedTransactions;
  const TransactionScreen({super.key,this.groupedTransactions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text('Transaction',
            style: TextStyle(fontWeight: FontWeight.w300)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.secondary,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(Icons.notifications_none, size: 20),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.primary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Container(
                    width: double.infinity,
                    height: 75,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: AppColors.secondary,
                    ),
                    child: const Column(
                      children: [
                        Text(
                          'Total Balance',
                          style: TextStyle(
                              fontSize: 12, color: AppColors.textColor),
                        ),
                        Text(
                          "\$7,783.00",
                          style: TextStyle(
                              fontSize: 22,
                              color: AppColors.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/income.png',
                              width: 12,
                              height: 12,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Total Balance',
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.textColor),
                            ),
                          ],
                        ),
                        const Text(
                          "\$7,783.00",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 35,
                      width: 1,
                      color: AppColors.secondary,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/expense.png',
                              width: 12,
                              height: 12,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Total Expense',
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.textColor),
                            ),
                          ],
                        ),
                        const Text(
                          "-\$1.187.40",
                          style: TextStyle(
                              fontSize: 24,
                              color: AppColors.tertiary,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: ProgressPill(percent: 0.3),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/check.png',
                    width: 12,
                    height: 12,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '30% Of Your Expenses, Looks Good.',
                    style: TextStyle(fontSize: 15, color: AppColors.textColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: groupedTransactions == null
                      ? const Center(
                          child: Text(
                            'No transactions available',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.textColor,
                            ),
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              groupedTransactions?.monthYear ?? 'Transactions',
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            // Transaction List
                            Expanded(
                              child: ListView.builder(
                                itemCount: groupedTransactions?.transactions.length ?? 0,
                                itemBuilder: (context, index) {
                                  final transaction = groupedTransactions!.transactions[index];
                                  return TransactionTile(transaction: transaction);
                                },
                              ),
                            ),
                          ],
                        ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
