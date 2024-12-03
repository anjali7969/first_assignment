import 'package:flutter/material.dart';
import 'dart:math';

class AreaOfCircleView extends StatefulWidget {
  const AreaOfCircleView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AreaOfCircleViewState createState() => _AreaOfCircleViewState();
}

class _AreaOfCircleViewState extends State<AreaOfCircleView> {
  final TextEditingController _radiusController = TextEditingController();
  String result = 'Result: 0';

  void calculateArea() {
    final double radius = double.tryParse(_radiusController.text) ?? 0;
    final area = pi * radius * radius;

    setState(() {
      result = 'Area of Circle: ${area.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Area of Circle')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                controller: _radiusController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Radius (r)',
                ),
              ),
              const SizedBox(height: 8),
              Text(result),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: calculateArea,
                  child: const Text('Calculate'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
