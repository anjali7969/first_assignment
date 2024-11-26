import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  @override
  _ArithmeticScreenState createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  int num1 = 0, num2 = 0, result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Operations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Enter first number'),
              keyboardType: TextInputType.number,
              onChanged: (value) => num1 = int.tryParse(value) ?? 0,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Enter second number'),
              keyboardType: TextInputType.number,
              onChanged: (value) => num2 = int.tryParse(value) ?? 0,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = num1 + num2;
                });
              },
              child: const Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = num1 - num2;
                });
              },
              child: const Text('Subtract'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = num1 * num2;
                });
              },
              child: const Text('Multiply'),
            ),
            const SizedBox(height: 20),
            Text(
              'Result: $result',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
