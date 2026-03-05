import 'dart:ui';

class TransactionModel {
  final String icon;
  final String title;
  final String date;
  final String category;
  final String amount;
  final Color iconColor;
  final bool isExpense;

  TransactionModel({
    required this.icon,
    required this.title,
    required this.date,
    required this.category,
    required this.amount,
    required this.iconColor,
    required this.isExpense,
  });
}

class GroupedTransactions {
  final String monthYear;
  final List<TransactionModel> transactions;

  GroupedTransactions({
    required this.monthYear,
    required this.transactions,
  });
}
