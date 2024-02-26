import 'package:flutter/material.dart';

import '../widgets/base_app_bar.dart';

/// Home Page.
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: const BaseAppBar(), //TODO: fade appbar when scrolling down
        body: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Left Section
              Container(
                width: screenWidth * 2 / 3,
                // height: 300,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(
                  color: Colors.pink,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        "Hi, I'm Cris.\n"), //TODO: add text styles (h1/h2/etc)
                    const Text("Engineer • Analyst • Designer\n"),
                    const Text(
                      "Raised in the vibrant cultural melting pot of Southern Central LA.\n\nMy journey began at the University of California, Davis, where I earned a Bachelor of Science in Electrical Engineering, immersing myself in its diverse disciplines and finding particular joy in programming and design.\n\nBeyond my professional pursuits, I find solace in the pages of books, the immersion of show binges, and the warmth of family outings.",
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("Resume"),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("CV"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /// Right Section
              Container(
                width: screenWidth / 3,
                // height: 300,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[900],
                ),
                child: Column(
                  children: [
                    Container(
                      width: screenWidth / 3 * 0.6,
                      height: screenWidth / 3 * 0.6 * 1.2,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[500],
                      ),
                    ),
                    const Text("Row2"),
                  ],
                ),
              ),
            ],
          ),

          /// Footer
          //TODO: create Footer
        )
        // body: Text("About/Home Page..."),
        );
  }
}
