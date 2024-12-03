import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  @override
  _ArithmeticScreenState createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  int num1 = 0, num2 = 0, result = 0;

  //Globalkey for form state
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Operations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Enter first number'),
                keyboardType: TextInputType.number,
                onChanged: (value) => num1 = int.tryParse(value) ?? 0,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter first number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
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
      ),
    );
  }
}
