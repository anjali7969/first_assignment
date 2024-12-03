import 'package:flutter/material.dart';
import 'package:first_assignment/view/simple_interest.dart'; // Import Simple Interest page
import 'package:first_assignment/view/area_of_circle_view.dart'; // Import Area of Circle page
import 'package:first_assignment/view/arithmetic.dart'; // Import Arithmetic page
import 'package:first_assignment/view/column_view.dart'; // Import Column page
import 'package:first_assignment/view/rich_text.dart'; // Import Rich Text page

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20), // Add spacing below the title
              // Options
              Expanded(
                child: ListView(
                  children: [
                    // Simple Interest Option
                    _buildOptionCard(
                      context,
                      title: 'Simple Interest',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SimpleInterestView(),
                          ),
                        );
                      },
                    ),
                    // Area of Circle Option
                    _buildOptionCard(
                      context,
                      title: 'Area of Circle',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AreaOfCircleView(),
                          ),
                        );
                      },
                    ),
                    // Arithmetic Operations Option
                    _buildOptionCard(
                      context,
                      title: 'Arithmetic Operations',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArithmeticScreen(),
                          ),
                        );
                      },
                    ),
                    // Column Example Option
                    _buildOptionCard(
                      context,
                      title: 'Column Example',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ColumnView(),
                          ),
                        );
                      },
                    ),
                    // Rich Text Example Option
                    _buildOptionCard(
                      context,
                      title: 'Rich Text Example',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RichTextView(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build option cards
  Widget _buildOptionCard(BuildContext context,
      {required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
