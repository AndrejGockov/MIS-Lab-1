import 'package:flutter/material.dart';

import '../widgets/exam_card.dart';
import 'package:mis_lab_1/models/exam.dart';
import 'package:mis_lab_1/screens/exam_details.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.index});
  final String index;

  @override
  State<Home> createState() => HomePage();
}

class HomePage extends State<Home> {
  // Generated subjects for testing
  List<Exam> exams = [
    Exam(name: "Структурно Програмирање", dateTime: DateTime(2025, 11, 4, 9, 0), locations: ["Lab_10", "Lab_11"]),
    Exam(name: "Вовед во Компјутерски Науки", dateTime: DateTime(2025, 11, 2, 9, 0), locations: ["Lab_12", "Lab_13"]),
    Exam(name: "Објектно Ориентирано Програмирање", dateTime: DateTime(2025, 12, 10, 9, 0), locations: ["Lab_10", "Lab_11"]),
    Exam(name: "Бази на податоци", dateTime: DateTime(2025, 12, 12, 12, 0), locations: ["Lab_12"]),
    Exam(name: "Алгоритми", dateTime: DateTime(2025, 11, 14, 10, 30), locations: ["Lab_12"]),
    Exam(name: "Мобилни апликации", dateTime: DateTime(2025, 11, 18, 8, 30), locations: ["Lab_13", "Lab_14"]),
    Exam(name: "Веб програмирање", dateTime: DateTime(2025, 12, 20, 11, 0), locations: ["Lab_15"]),
    Exam(name: "Оперативни системи", dateTime: DateTime(2025, 11, 22, 9, 0), locations: ["Lab_15", "Lab_16"]),
    Exam(name: "Компјутерски мрежи", dateTime: DateTime(2025, 11, 24, 13, 0), locations: ["Lab_16"]),
    Exam(name: "Математика 1", dateTime: DateTime(2025, 11, 26, 9, 0), locations: ["Lab_10"]),
    Exam(name: "Софтверско инженерство", dateTime: DateTime(2025, 12, 28, 14, 0), locations: ["Lab_12"]),
    Exam(name: "Математика 2", dateTime: DateTime(2025, 11, 30, 10, 0), locations: ["Lab_12", "Lab_13"]),
  ];

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "Распоред за испити - ${widget.index}",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
          ),
        ),
      ),

      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          Exam exam = exams[index];
          return examCard(exam: exams[index]);
        }
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(14),
        color: Theme.of(context).colorScheme.inversePrimary,
        child: Text(
          "Вкупно испити: ${exams.length}",
          textAlign: TextAlign.center,

          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}