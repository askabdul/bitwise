import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../custom_widgets/progress_pill.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                      style:
                          TextStyle(fontSize: 15, color: AppColors.textColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    decoration: const BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150,
                          child: Card(
                            color: AppColors.primary,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        padding: const EdgeInsets.all(3),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            colors: [
                                              AppColors.secondary,
                                              AppColors.secondary,
                                              AppColors.lightBlue,
                                              AppColors.lightBlue
                                            ],
                                            stops: [0.0, 0.5, 0.5, 1.0],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          ),
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors
                                                .primary, // background inside
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Image.asset(
                                              "assets/images/car.png",
                                              width: 10,
                                              height: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'Savings On Goals',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    // endIndent: 280,
                                    color: AppColors.secondary,
                                    thickness: 2,
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/salary.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Revenue Last Week',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.textColor),
                                              ),
                                              Text(
                                                '\$4.000.00',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 150, // set desired width
                                        child: Divider(
                                          color: AppColors.secondary,
                                          thickness: 2,
                                          height: 20,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/images/food.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Food Last Week',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: AppColors.textColor),
                                              ),
                                              Text(
                                                '-\$100.00',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.tertiary),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.menuBg,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(50),
                            ),

                            indicatorSize: TabBarIndicatorSize.tab, // important
                            indicatorPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 6,
                            ),

                            labelColor: AppColors.textColor,
                            unselectedLabelColor: AppColors.textColor.withOpacity(0.6),

                            labelPadding: const EdgeInsets.symmetric(horizontal: 16),

                            dividerColor: Colors.transparent, // removes bottom line

                            tabs: const [
                              Tab(text: 'Daily'),
                              Tab(text: 'Weekly'),
                              Tab(text: 'Monthly'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
