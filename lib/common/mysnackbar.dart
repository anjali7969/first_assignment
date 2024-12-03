import 'package:flutter/material.dart';

showMySnackBar(
  BuildContext context,
  String message, {
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
      backgroundColor: color ?? Colors.green,
      behavior: SnackBarBehavior.floating,
    ),
  );
}

class Mysnackbar extends StatelessWidget {
  const Mysnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
