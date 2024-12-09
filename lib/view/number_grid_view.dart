import 'package:flutter/material.dart';

class NumberGridView extends StatelessWidget {
  const NumberGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Number Grid',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 3, // 3 columns
        mainAxisSpacing: 16, // Vertical spacing
        crossAxisSpacing: 16, // Horizontal spacing
        children: [
          for (int i = 1; i <= 10; i++) ...{
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black, // Card background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Text(
                '$i',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          }
        ],
      ),
    );
  }
}
