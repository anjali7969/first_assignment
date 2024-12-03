import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 400,
              width: double.infinity,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text(
                '1',
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
            ),
          ),
          Expanded(
            // fit: FlexFit.tight,
            flex: 3,
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.brown,
              alignment: Alignment.center,
              child: const Text(
                '1',
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
