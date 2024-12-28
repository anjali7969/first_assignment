import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  // Flag to track whether the button is pressed
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centers the content vertically
          children: [
            // TextFormField for user input
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter text',
              ),
            ),
            const SizedBox(height: 16),
            // ElevatedButton that changes color on press
            ElevatedButton(
              onPressed: () {
                // Toggle the state of the button press
                setState(() {
                  _isPressed = !_isPressed;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _isPressed
                    ? Colors.green
                    : Colors.blue, // Change color based on press state
              ),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
