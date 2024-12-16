import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 400,
          width: 400,
          color: Colors.pinkAccent,
          child: const Text('I am First container'),
        ),
        Positioned(
            top: 1,
            right: 1,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
              child: const Text('I am second container'),
            )),
        Positioned(
            bottom: -10,
            right: 1,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
              child: const Text('I am third container'),
            )),
        const Positioned(
            bottom: -10,
            left: 1,
            child: SizedBox(
              height: 100,
              width: 100,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/ListView/1.png'),
              ),
            )),
      ],
    )));
  }
}
