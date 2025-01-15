import 'package:flutter/material.dart';

class SalonInfo extends StatelessWidget {
  const SalonInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/special/saloon.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: screenWidth * 0.03,
            horizontal: screenWidth * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: screenWidth * 0.03,
                runSpacing: screenWidth * 0.02,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.03,
                      vertical: screenWidth * 0.015,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8DDFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.local_offer, size: screenWidth * 0.05),
                        const SizedBox(width: 5),
                        const Text('Save Up To 10%'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.03,
                      vertical: screenWidth * 0.015,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFCCCACA)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.thumb_up, size: screenWidth * 0.05),
                        const SizedBox(width: 5),
                        const Text('Touch Me Recommended'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Salon Niro',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                '12/2/A , Kesbewa, Piliyandala',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  const Text(' 4.5 '),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                  const Text(' | 200 Reviews'),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Services'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Reviews'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Portfolio'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Details'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
