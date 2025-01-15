import 'package:flutter/material.dart';

class SpecialOffersSection extends StatelessWidget {
  const SpecialOffersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Special Offers',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Urbanist',
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/salon_niro.png'),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Salon Niro',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '12/2/A , Kesbewa, Piliyandala',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Text(
                          '5.0',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Image.asset('assets/star.png', width: 8),
                        Container(
                          width: 1,
                          height: 12,
                          color: Colors.black,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                        ),
                        const Text(
                          '236 Reviews',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              // Similar structure for second offer
            ],
          ),
        ],
      ),
    );
  }
}
