import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';
import '../custom_widgets/progress_pill.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hi, Welcome Back',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold)),
                    Text('Good Morning',
                        style: TextStyle(
                            fontSize: 10, color: AppColors.textColor)),
                  ],
                ),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColors.secondary,
                  child: Icon(
                    Icons.notifications_none_sharp,
                    size: 26,
                    color: AppColors.iconColor,
                    weight: 100.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        toolbarHeight: kToolbarHeight,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.primary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              IntrinsicHeight(
                child: Padding(
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
                      const VerticalDivider(
                        color: AppColors.secondary,
                        thickness: 1,
                        width: 20,
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
                height: 35,
              ),
              Expanded(
                // flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  decoration: const BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: const Center(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
