import 'package:first_assignment/view/student_details_view.dart';
import 'package:first_assignment/view/student_output_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Set the initial route
      initialRoute: '/',
      // Define the route mapping
      routes: {
        '/': (context) => const StudentDetailsView(), // Default route
        '/output': (context) => const StudentOutputView(),
      },
    );
  }
}
