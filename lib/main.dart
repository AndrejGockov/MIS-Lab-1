import 'package:flutter/material.dart';
import 'package:mis_lab_1/models/exam.dart';
import 'package:mis_lab_1/screens/home.dart';
import 'package:mis_lab_1/screens/exam_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIS_Lab_1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(index: "232120"),
        "/details": (context) => const ExamDetails(),
      },
    );
  }
}
