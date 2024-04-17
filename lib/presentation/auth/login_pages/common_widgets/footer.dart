import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer(
      {super.key,
      required this.text,
      required this.buttonText,
      required this.onPressed});
  final String text;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}
