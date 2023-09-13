import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonBackgroundColor;

  final bool isPrivate = true;

  Button({
    super.key,
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonBackgroundColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 40.0,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20.0,
            color: buttonTextColor,
          ),
        ),
      ),
    );
  }
}
