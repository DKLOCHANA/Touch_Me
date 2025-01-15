import 'package:flutter/material.dart';

import '../widgets/saloninfo.dart';
import '../widgets/servicelist.dart';
import '../widgets/servicesearch.dart';

class SalonDetailsScreen extends StatelessWidget {
  const SalonDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: const [
                  SalonInfo(),
                  Divider(
                    thickness: 2,
                    color: Colors.black45,
                  ),
                  ServiceSearch(),
                  Divider(
                    thickness: 2,
                    color: Colors.black45,
                  ),
                  ServiceList(),
                ],
              ),
            ),
          ),
          // Positioned Back Button
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
