import 'package:flutter/material.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpansionTile(
            title: const Text(
              'Popular Services',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              _buildServiceItem(
                title: 'Haircut',
                price: '\$40.00',
                duration: '35m',
                discount: 'SAVE UP TO 10%',
              ),
              _buildServiceItem(
                title: 'Haircut & beard',
                price: '\$50.00',
                duration: '55m',
                discount: 'SAVE UP TO 15%',
              ),
              _buildServiceItem(
                title: 'Edge up',
                price: '\$30.00',
                duration: '25m',
                discount: 'SAVE UP TO 10%',
              ),
            ],
          ),
          Divider(
            thickness: 1,
          ),
          ExpansionTile(
            title: const Text(
              'All Services',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              _buildServiceItem(
                title: 'Shampoo & Style',
                price: '\$60.00',
                duration: '45m',
                discount: 'SAVE UP TO 10%',
              ),
              _buildServiceItem(
                title: 'Beard Trim',
                price: '\$20.00',
                duration: '20m',
                discount: 'SAVE UP TO 5%',
              ),
              _buildServiceItem(
                title: 'Deep Conditioning',
                price: '\$70.00',
                duration: '50m',
                discount: 'SAVE UP TO 10%',
              ),
            ],
          ),
          Divider(
            thickness: 1,
          ),
          ExpansionTile(
            title: const Text(
              'Other Services',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              _buildServiceItem(
                title: 'Hair Coloring',
                price: '\$100.00',
                duration: '1h 30m',
                discount: 'SAVE UP TO 20%',
              ),
              _buildServiceItem(
                title: 'Straightening',
                price: '\$150.00',
                duration: '2h',
                discount: 'SAVE UP TO 15%',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildServiceItem({
    required String title,
    required String price,
    required String duration,
    required String discount,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 14),
            ),
            Text(
              discount,
              style: const TextStyle(
                color: Color(0xFF9D1E96),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        const Text(
          'A detailed description of the service goes here to give customers more information about the offering.',
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 13),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  price,
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  duration,
                  style: const TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9D1E96),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 27,
                  vertical: 6,
                ),
              ),
              child: const Text(
                'Book',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
