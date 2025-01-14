import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:touch_me/widgets/register_button.dart';

class OnboardingPage extends StatelessWidget {
  final PageController controller = PageController();

  OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80.0, left: 28, right: 28),
        child: PageView(
          controller: controller, // Link the PageView to the controller
          children: [
            // Page 1
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
                                'assets/images/onboard1.png'), // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Text Section
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0, top: 10),
                    child: Column(
                      children: [
                        Text(
                          'Timeless Sophistication, Each Moment Transcends Expectations',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Discover your true beauty at Touch Me. Our skilled professionals enhance your natural glow, leaving you feeling confident, empowered, and radiant with every visit.',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Page 2
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
                                'assets/images/about-us-1.png'), // Replace with your image path
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
                          'Where Tranquility Meets Luxury, One Treatment at a Time.',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Discover ultimate relaxation at Touch Me. Our expert therapists nurture your well-being, leaving you feeling rejuvenated, peaceful, and radiant after every visit.',
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
              // Page Indicator
              Center(
                  child: SmoothPageIndicator(
                controller: controller,
                count: 2,
                axisDirection: Axis.horizontal,
                effect: const SlideEffect(
                    offset: 10.0,
                    spacing: 8.0,
                    radius: 8.0,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 2,
                    dotColor: Colors.grey,
                    activeDotColor: Color(0xFF3A0B37)),
              )),
              const SizedBox(height: 20),

              // Full-width Button
              RegisterButton(
                buttonName: 'Continue',
                onPressed: () {
                  // Navigate to the next page
                  if (controller.page != 2) {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    // Final page logic (e.g., navigate to the main app)
                    print("End of onboarding!");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
