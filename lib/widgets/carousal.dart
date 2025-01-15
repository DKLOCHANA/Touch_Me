import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousal extends StatelessWidget {
  const Carousal({super.key});

  final List<Map<String, dynamic>> saloons = const [
    {
      "image": "assets/images/special/saloon.png",
      "name": "Brows & Lashes",
      "reviews": "120 reviews",
      "rating": 4.8,
      "offer": "20% off",
      "address": "123 Beauty St, Colombo"
    },
    {
      "image": "assets/images/special/saloon.png",
      "name": "Electrician",
      "reviews": "98 reviews",
      "rating": 4.6,
      "offer": "10% off",
      "address": "45 Main Rd, Kandy"
    },
    {
      "image": "assets/images/special/saloon.png",
      "name": "Carpentry",
      "reviews": "75 reviews",
      "rating": 4.5,
      "offer": "15% off",
      "address": "56 Woodworks Ave, Gampaha"
    },
    {
      "image": "assets/images/special/saloon.png",
      "name": "Cleaning",
      "reviews": "200 reviews",
      "rating": 4.9,
      "offer": "25% off",
      "address": "98 Clean St, Negombo"
    },
    {
      "image": "assets/images/special/saloon.png",
      "name": "Gardening",
      "reviews": "60 reviews",
      "rating": 4.3,
      "offer": "10% off",
      "address": "34 Greenfield Blvd, Matara"
    },
    {
      "image": "assets/images/special/saloon.png",
      "name": "Painting",
      "reviews": "150 reviews",
      "rating": 4.7,
      "offer": "20% off",
      "address": "77 Paintwork Rd, Galle"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    double viewportFraction =
        MediaQuery.of(context).size.width < 600 ? 0.9 : 0.8;

    return Container(
      height: screenHeight / 2.5,
      child: CarouselSlider.builder(
        itemCount: saloons.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image with Aspect Ratio
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    saloons[itemIndex]['image']!,
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 10),
                // Text Sections (name, address, reviews)
                Text(
                  saloons[itemIndex]['name']!,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
                Text(
                  saloons[itemIndex]['address']!,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      saloons[itemIndex]['rating'].toString(),
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      "  |  ${saloons[itemIndex]['reviews']!}",
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                // Offer Text with Styling
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Save up to ${saloons[itemIndex]['offer']}',
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        options: CarouselOptions(
          aspectRatio: 1.5,
          initialPage: 0,
          viewportFraction: viewportFraction,
          enableInfiniteScroll: false,
          disableCenter: true,

          scrollDirection: Axis.horizontal,
          // Add padding to ensure no overlapping
        ),
      ),
    );
  }
}
