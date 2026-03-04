class NotificationModel {
  final String? period;
  final String title;
  final String description;
  final String timestamp;
  final String icon;
  final String? category;

  NotificationModel({
    this.period,
    required this.title,
    required this.description,
    required this.timestamp,
    required this.icon,
    this.category,
  });
}
