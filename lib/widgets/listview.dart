import 'package:flutter/material.dart';

class NearestSaloons extends StatelessWidget {
  const NearestSaloons({super.key});

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
    return Scaffold(
      body: ListView.builder(
        itemCount: saloons.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(saloons[index]['image']!),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.amber,
                    child: Text(
                      saloons[index]['rating'].toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              saloons[index]['name']!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(saloons[index]['address']!),
                const SizedBox(height: 5),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {
                // Handle booking action
              },
              child: const Text('Book Now'),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
            ),
          );
        },
      ),
    );
  }
}
