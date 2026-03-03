import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class MonthlyScreen extends StatelessWidget {
  const MonthlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightBlue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/salary.png',
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Salary',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '18:27 - April 30',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.tertiary,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                height: 35,
                child: VerticalDivider(
                  color: AppColors.primary,
                  thickness: 1,
                ),
              ),
              Text('Monthly'),
              const SizedBox(
                height: 35,
                child: VerticalDivider(
                  color: AppColors.primary,
                  thickness: 1,
                ),
              ),
              Text(
                '\$4.000.00',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight:
                    FontWeight.w400),
              ),
          
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightBlue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/groceries.png',
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Groceries',
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '17:00 - April 24',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.tertiary,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                height: 35,
                child: VerticalDivider(
                  color: AppColors.primary,
                  thickness: 1,
                ),
              ),
              const Text('Pantry'),
              const SizedBox(
                height: 35,
                child: VerticalDivider(
                  color: AppColors.primary,
                  thickness: 1,
                ),
              ),
              const Text(
                '-\$1.00.00',
                style: TextStyle(
                    fontSize: 15,
                    color: AppColors.tertiary,
                    fontWeight:
                    FontWeight.w400),
              ),

            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.tertiary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/handkey.png',
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rent',
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '8:30 - April 15',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.tertiary,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                height: 35,
                child: VerticalDivider(
                  color: AppColors.primary,
                  thickness: 1,
                ),
              ),
              Text('Rent'),
              const SizedBox(
                height: 35,
                child: VerticalDivider(
                  color: AppColors.primary,
                  thickness: 1,
                ),
              ),
              Text(
                '-\$674.40',
                style: TextStyle(
                    fontSize: 15,
                    color: AppColors.tertiary,
                    fontWeight:
                    FontWeight.w400),
              ),
          
            ],
          ),
        ),
      ],
    );
  }
}
