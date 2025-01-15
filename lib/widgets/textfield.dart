import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        filled: true,
        fillColor: const Color(0x99F2F2F2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 21,
        ),
        labelStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
          color: Color(0xFF333333),
        ),
      ),
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        color: Color(0xFF333333),
      ),
    );
  }
}
