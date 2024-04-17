import 'package:flutter/material.dart';

errorMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: TextStyle(color: Colors.white),
    ),
    duration: Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.red,
  ));
}
