import 'package:flutter/material.dart';

import '../widgets/bottomnav.dart';
import '../widgets/carousal.dart';
import '../widgets/circuler_carousel.dart';
import '../widgets/searchbar.dart';
import '../widgets/sectionheader.dart';

class CustomerhomeViewPage extends StatelessWidget {
  const CustomerhomeViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Section with Background and Search Bar
            Container(
              height: screenHeight / 4,
              decoration: const BoxDecoration(
                color: Color(0xFF8D2E55),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 60,
                  bottom: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Greeting Text Section
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Arshan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        // Location Button Section
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                SizedBox(width: 5),
                                Text(
                                  "Kesbewa",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    // Search Bar Section
                    const Searchbar(),
                  ],
                ),
              ),
            ),

            // Services Section
            Sectionheader(header: "Services"),
            const Services(),
            Sectionheader(header: "Special Offers"),
            Carousal(),
            Sectionheader(header: "Recommended"),
            Carousal(),
            Sectionheader(header: "Nearest Saloons"),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
