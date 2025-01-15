import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  final List<Map<String, String>> services = const [
    {"image": "assets/images/services/lashes.png", "label": "Brows & Lashes"},
    {"image": "assets/images/services/lashes.png", "label": "Electrician"},
    {"image": "assets/images/services/lashes.png", "label": "Carpentry"},
    {"image": "assets/images/services/lashes.png", "label": "Cleaning"},
    {"image": "assets/images/services/lashes.png", "label": "Gardening"},
    {"image": "assets/images/services/lashes.png", "label": "Painting"},
    {"image": "assets/images/services/lashes.png", "label": "Pest Control"},
    {"image": "assets/images/services/lashes.png", "label": "Appliance Repair"},
    {"image": "assets/images/services/lashes.png", "label": "Moving Services"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: services.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final service = services[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage(service["image"]!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  service["label"]!,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
