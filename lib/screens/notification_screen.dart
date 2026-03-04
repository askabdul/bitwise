import 'package:flutter/material.dart';

import '../core/models/notification_model.dart';
import '../core/theme/app_colors.dart';
import '../custom_widgets/notification_tile.dart';

class NotificationScreen extends StatelessWidget {
  final notifications = [
    NotificationModel(
        title: 'Reminder!',
        description:
            'Set up your automatic savings to meet your savings goal...',
        timestamp: '17:00 - April 24',
        icon: 'assets/images/noti.png',
        category: 'Groceries |  pantry  |  -\$100,00',
        period: 'Today'),
    NotificationModel(
        title: 'Payment Received',
        description:
            'You received a salary payment of \$4,000.00 to your account',
        timestamp: '09:30 - December 15',
        icon: 'assets/images/star.png',
        period: 'Today'),
    NotificationModel(
      title: 'Budget Alert',
      description: 'You have exceeded 85% of your monthly entertainment budget',
      timestamp: '14:22 - December 14',
      icon: 'assets/images/dollar-sign.png',
      category: 'Entertainment | Movies | -\$45.00',
    ),
    NotificationModel(
        title: 'Bill Reminder',
        description: 'Your electricity bill payment is due in 2 days',
        timestamp: '08:15 - December 13',
        icon: 'assets/images/noti.png',
        category: 'Utilities | Electricity | -\$120.00',
        period: 'This Week'),
    NotificationModel(
      title: 'Investment Update',
      description: 'Your investment portfolio gained 3.2% this month',
      timestamp: '16:45 - December 12',
      icon: 'assets/images/arrow-down.png',
    ),
    NotificationModel(
        title: 'Expense Added',
        description:
            'New grocery shopping expense has been automatically categorized',
        timestamp: '19:30 - December 11',
        icon: 'assets/images/dollar-sign.png',
        category: 'Groceries | Supermarket | -\$85.50',
        period: 'Yesterday'),
    NotificationModel(
        title: 'Savings Goal',
        description:
            'Congratulations! You have reached 75% of your vacation savings goal',
        timestamp: '12:00 - December 10',
        icon: 'assets/images/star.png',
        period: 'This Week'),
  ];
  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text('Notification', style: TextStyle(fontWeight: FontWeight.w300)),
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
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            color: AppColors.secondary,
          ),
          child: ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return NotificationTile(
                notification: notifications[index],
              );
            },
          ),
        ),
      ),
    );
  }


}


