import 'package:flutter/material.dart';

import '../widgets/register_button.dart';

class LocationaccessViewPage extends StatelessWidget {
  const LocationaccessViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80.0, left: 28, right: 28),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Top Image with Rounded Borders
                  Padding(
                    padding: const EdgeInsets.only(top: 69.0),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.48,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/locationmap.png'), // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Text Section
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                    child: const Column(
                      children: [
                        Text(
                          'Enable Location Services',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Enable your location to receive personalized recommendations for the best local businesses around you. Discover hidden gems, top-rated spots, and unique experiences tailored just for you!',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey, height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Sheet
      bottomSheet: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 20.0, top: 10, left: 20, right: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Full-width Button
              RegisterButton(
                buttonName: 'Turn on Location',
                onPressed: () {
                  // Navigate to the next page
                },
              ),
              SizedBox(height: 20),
              RegisterButton(
                buttonName: 'Not Now',
                onPressed: () {
                  // Navigate to the next page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
