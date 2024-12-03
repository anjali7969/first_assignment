import 'package:first_assignment/common/mysnackbar.dart';
import 'package:first_assignment/view/Flexible_expanded_view.dart';
import 'package:first_assignment/view/classwork_view.dart';
import 'package:first_assignment/view/column_row.dart';
import 'package:first_assignment/view/column_view.dart';
import 'package:first_assignment/view/container_view.dart';
import 'package:first_assignment/view/dashboard.dart';
import 'package:first_assignment/view/load_image_view.dart';
import 'package:first_assignment/view/snack_bar_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClassworkView(),
    );
  }
}
