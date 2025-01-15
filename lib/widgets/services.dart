import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Services',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Urbanist',
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/hair_salon.png', width: 70),
                  const SizedBox(height: 4),
                  const Text(
                    'Hair Salon',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/barbershop.png', width: 70),
                  const SizedBox(height: 4),
                  const Text(
                    'Barbershop',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/massage.png', width: 70),
                  const SizedBox(height: 4),
                  const Text(
                    'Massage',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/skincare.png', width: 70),
                  const SizedBox(height: 4),
                  const Text(
                    'Skin Care',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
