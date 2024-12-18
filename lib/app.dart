import 'package:first_assignment/view/bottom_navigation_view.dart';
import 'package:first_assignment/view/card_view.dart';
import 'package:first_assignment/view/datatable_view.dart';
import 'package:first_assignment/view/dynamic_card_view.dart';
import 'package:first_assignment/view/number_grid_view.dart';
import 'package:first_assignment/view/stack_view.dart';
import 'package:first_assignment/view/student_details_view.dart';
import 'package:first_assignment/view/student_output_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: BottomNavigationView(),
      // Set the initial route
      // initialRoute: '/',
      // // Define the route mapping
      // routes: {
      //   '/': (context) => const StudentDetailsView(), // Default route
      //   '/output': (context) => const StudentOutputView(),
      // },
    );
  }
}
