import 'package:flutter/material.dart';

class AuthInputField extends StatefulWidget {
  final String icon;
  final String label;
  final bool isPassword;

  const AuthInputField({
    Key? key,
    required this.icon,
    required this.label,
    required this.isPassword,
  }) : super(key: key);

  @override
  _AuthInputFieldState createState() => _AuthInputFieldState();
}

class _AuthInputFieldState extends State<AuthInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: widget.isPassword ? _obscureText : false,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 11),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(86),
            borderSide: BorderSide(color: const Color(0xFF8D2E55)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(86),
            borderSide: BorderSide(color: const Color(0xFF8D2E55)),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              widget.icon,
              width: 24,
              height: 24,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: const Color(0xFF8D2E55),
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          labelText: widget.label,
          labelStyle: TextStyle(
            color: const Color(0xFF8D2E55),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
