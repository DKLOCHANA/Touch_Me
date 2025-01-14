import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:touch_me/widgets/categoryselector_button.dart';

import '../widgets/register_button.dart';

class SelectCategoryPage extends StatefulWidget {
  const SelectCategoryPage({super.key});

  @override
  _SelectCategoryPageState createState() => _SelectCategoryPageState();
}

class _SelectCategoryPageState extends State<SelectCategoryPage> {
  int _selectedCategory = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 80.0, left: 28, right: 28, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Text('Create Account',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text('Welcome to the kingdom of Beauty',
                style: const TextStyle(fontSize: 16, color: Colors.grey)),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/categoryselect.png'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Select your category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Category Selection
            CategorySelectionTile(
              imagePath: 'assets/images/thinking.png',
              title: 'Salon Owners',
              subtitle: 'Those who have the shop',
              isSelected: _selectedCategory == 1,
              onTap: () {
                setState(() {
                  _selectedCategory = 1;
                });
              },
            ),
            const SizedBox(height: 10),
            CategorySelectionTile(
              imagePath: 'assets/images/customer-service.png',
              title: 'Spa Owners',
              subtitle: 'Those who sell service',
              isSelected: _selectedCategory == 2,
              onTap: () {
                setState(() {
                  _selectedCategory = 2;
                });
              },
            ),
            const SizedBox(height: 10),
            CategorySelectionTile(
              imagePath: 'assets/images/buyer 1.png',
              title: 'Customers',
              subtitle: 'Those who buy service',
              isSelected: _selectedCategory == 3,
              onTap: () {
                setState(() {
                  _selectedCategory = 3;
                });
              },
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 20.0, top: 10, left: 28, right: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Page Indicator
              Text(
                "Once you are done selecting your profession, proceed by clicking on the next button",
                style: TextStyle(fontSize: 16, color: Color(0xFF3A0B37)),
              ),
              const SizedBox(height: 20),

              // Full-width Button
              RegisterButton(
                buttonName: "Next",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
