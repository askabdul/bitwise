import 'package:bitwise/screens/bottom_nav_screens/analysis_screen.dart';
import 'package:bitwise/screens/bottom_nav_screens/category_screen.dart';
import 'package:bitwise/screens/bottom_nav_screens/profile_screen.dart';
import 'package:bitwise/screens/bottom_nav_screens/transaction_screen.dart';
import 'package:flutter/material.dart';

import '../../core/models/transaction_model.dart';
import '../../custom_widgets/custom_nav.dart';
import 'home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;


  final sampleGroupedTransactions = GroupedTransactions(
    monthYear: "December",
    transactions: [
      TransactionModel(
        icon: "assets/images/salary.png",
        title: "Grocery",
        date: "Dec 15, 2024",
        category: "Food",
        amount: "-\$85.50",
        iconColor: Colors.green,
        isExpense: true,
      ),
      TransactionModel(
        icon: "assets/images/groceries.png",
        title: "Gas",
        date: "Dec 14, 2024",
        category: "Transport",
        amount: "-\$45.00",
        iconColor: Colors.blue,
        isExpense: true,
      ),
      TransactionModel(
        icon: "assets/images/handkey.png",
        title: "Salary",
        date: "Dec 13, 2024",
        category: "Income",
        amount: "+\$2,500.00",
        iconColor: Colors.orange,
        isExpense: false,
      ),
      TransactionModel(
        icon: "assets/images/transport.png",
        title: "Dinner ",
        date: "Dec 12, 2024",
        category: "Food",
        amount: "-\$65.25",
        iconColor: Colors.red,
        isExpense: true,
      ),
      TransactionModel(
        icon: "assets/images/transport.png",
        title: "Movie",
        date: "Dec 11, 2024",
        category: "Entertainment",
        amount: "-\$28.00",
        iconColor: Colors.purple,
        isExpense: true,
      ),
    ],
  );



  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      const HomeScreen(),
      const AnalysisScreen(),
      TransactionScreen(groupedTransactions: sampleGroupedTransactions),
      const CategoryScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
      body: _screens[_selectedIndex], // Your list of screens
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
