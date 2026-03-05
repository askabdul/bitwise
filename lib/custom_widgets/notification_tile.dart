import 'package:bitwise/core/models/notification_model.dart';
import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class NotificationTile extends StatelessWidget {
  final NotificationModel notification;
  const NotificationTile({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (notification.period != null)
            Text(notification.period!, style: const TextStyle(fontSize: 12)),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  notification.icon,
                  width: 18,
                  height: 18,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      notification.description!,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor),
                      softWrap: true,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    if (notification.category != null)
                      Text(
                        notification.category!,
                        style: const TextStyle(
                          fontSize: 11,
                          color: AppColors.tertiary,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                notification.timestamp!,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightBlue),
              ),
            ],
          ),
          const Divider(
            color: AppColors.primary,
            thickness: 1,
            height: 20,
          ),
        ],
      ),
    );
  }
}
