import 'package:flutter/material.dart';

class sectionheaderviewall extends StatelessWidget {
  final String header;
  const sectionheaderviewall({
    super.key,
    required this.header,
  });

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
              const Spacer(),
              GestureDetector(
                onTap: () {
                  // Handle "view all" action here
                },
                child: const Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
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
