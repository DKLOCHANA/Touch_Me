import 'package:flutter/material.dart';

class Sectionheader extends StatelessWidget {
  final String header;

  const Sectionheader({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                header,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Placeholder for Services Widget
        ],
      ),
    );
  }
}
