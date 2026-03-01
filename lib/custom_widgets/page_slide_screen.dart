import 'package:flutter/material.dart';

class PageSlideScreen extends StatefulWidget {
  final String title;
  final String img;
  final List pages;
  final int currentPage;
  final Function changePage;

  const PageSlideScreen(
      {super.key,
      required this.title,
      required this.img,
      required this.pages,
      required this.currentPage,
      required this.changePage});

  @override
  State<PageSlideScreen> createState() => _PageSlideScreenState();
}

class _PageSlideScreenState extends State<PageSlideScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(height: 150),
        SizedBox(height: MediaQuery.of(context).size.height * 0.15),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        // const SizedBox(height: 90),
        SizedBox(height: MediaQuery.of(context).size.height * 0.07),
        Expanded(
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: const Color(0xFFD4EEDC),
                        borderRadius: BorderRadius.circular(150),
                      ),
                      child: Image.asset(
                        widget.img,
                        height: 250,
                        width: 250,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                      onTap: () {
                        widget.changePage();
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      widget.pages.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: widget.currentPage == index ? 12 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: widget.currentPage == index
                              ? const Color(0xFF00C08B)
                              : Colors.grey[400],
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
