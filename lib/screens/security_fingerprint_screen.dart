import 'package:flutter/material.dart';

class SecurityFingerprintScreen extends StatelessWidget {
  const SecurityFingerprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF00D09E),
        body: SafeArea(
          bottom: false,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            const Text(
              'Security Fingerprint',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(30.0),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Image.asset(
                  "assets/images/fingerprint.png",
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Use Fingerprint To Access",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt."),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDFF7E2),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Use Touch Id',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                const Text(
                  '¿Or prefer use pin code?',
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ]),
            ))
          ]),
        ));
  }
}
