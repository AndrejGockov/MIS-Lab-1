import 'package:mis_lab_1/models/exam.dart';
import 'package:mis_lab_1/widgets/exam_details_card.dart';

import 'package:flutter/material.dart';

class ExamDetails extends StatelessWidget{
  const ExamDetails({super.key,});

  @override
  Widget build(BuildContext context){
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          exam.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),

      body: (
          DetailedExamData(exam)
      ),
    );
  }
}