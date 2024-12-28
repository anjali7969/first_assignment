import 'package:first_assignment/core/app_theme.dart';
import 'package:first_assignment/view/time_date_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font and Theme',
      initialRoute: '/',
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,

      home: const TimeDateView(),
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
