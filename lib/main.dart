// ignore_for_file: use_key_in_widget_constructors

import 'package:complaints_company/screens/complaints_part1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: ComplaintsPage(),
    );
  }
}
