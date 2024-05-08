import 'package:flutter/material.dart';

showErrorDialog(BuildContext context, String errorMessage) {
  return SnackBar(
    duration: const Duration(seconds: 5),
    content: Text(errorMessage,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
    padding: const EdgeInsets.all(16),
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating,
  );
}
