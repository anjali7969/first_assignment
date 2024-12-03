import 'package:flutter/material.dart';

class ClassworkView extends StatelessWidget {
  const ClassworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Rows and Columns',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        // This ensures the AppBar doesn't overlap with status bar
        toolbarHeight: 50,
      ),
      body: Column(
        children: [
          // Vertical Columns Section
          SizedBox(
            height: 140, // Fixed height for the vertical section
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.indigo,
                    child: const Center(
                      child: Text(
                        'Column 1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.lightGreen,
                    child: const Center(
                      child: Text(
                        'Column 2',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        'Column 3',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Horizontal Rows Section
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.grey,
                    child: const Center(
                      child: Text(
                        'Row 1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text(
                        'Row 2',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.brown,
                    child: const Center(
                      child: Text(
                        'Row 3',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
