import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  const RegisterButton(
      {super.key, required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
          // Navigate to the next page
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF3A0B37), // Button color
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
