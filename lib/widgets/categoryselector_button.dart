import 'package:flutter/material.dart';

class CategorySelectionTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  const CategorySelectionTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF8D2E55)),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30, // Set the desired width for your image
                height: 30, // Set the desired height for your image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath), // Dynamic image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xFF8D2E55)),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
                color: isSelected ? const Color(0xFF8D2E55) : Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
