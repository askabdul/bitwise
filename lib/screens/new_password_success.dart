import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class NewPasswordSuccess extends StatelessWidget {
  const NewPasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/progress.png', width: 140, height: 140,),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                const Text(
                  "Password Has been Changed successfully",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ));
  }
}

