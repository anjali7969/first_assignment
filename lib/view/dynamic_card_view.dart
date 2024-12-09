import 'package:first_assignment/common/my_card.dart';
import 'package:first_assignment/common/mysnackbar.dart';
import 'package:flutter/material.dart';

class DynamicCardView extends StatelessWidget {
  const DynamicCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 1; i < 5; i++)
                GestureDetector(
                  onTap: () {
                    showMySnackBar(
                      context,
                      'Card $i clicked',
                    );
                  },
                  child: MyCard(
                    text: 'Card $i',
                    color: i % 2 == 0 ? Colors.green : Colors.blue,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
