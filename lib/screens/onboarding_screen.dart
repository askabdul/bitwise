import 'package:bitwise/screens/auth_option_screen.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/page_slide_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'title': 'Welcome to Expense Manager',
      'img': 'assets/images/toss.png',
    },
    {
      'title': '¿Are you ready to take control of your finances?',
      'img': 'assets/images/bank-card.png',
    },
  ];


  void changePage(int index) {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthOptionScreen(),
        ),
      );
    }
  }


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00D09E),
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return PageSlideScreen(
                    title: _pages[index]['title']!,
                    img: _pages[index]['img']!,
                    pages: _pages,
                    currentPage: _currentPage,
                    changePage: () => changePage(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
