import 'package:flutter/material.dart';

class ServiceSearch extends StatelessWidget {
  const ServiceSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
        decoration: BoxDecoration(
          color: const Color(0xFFEAE8E8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: Color(0xFF8F8F8F),
            ),
            const SizedBox(width: 13),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for Service',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Color(0xFF8F8F8F),
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
