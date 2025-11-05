import 'package:flutter/material.dart';
import 'package:mis_lab_1/models/exam.dart';

class examCard extends StatelessWidget{
  final Exam exam;

  const examCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: exam);
      },
      child: Card(
        margin: EdgeInsets.all(8),
        color: Theme.of(context).colorScheme.inversePrimary,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row (
                children: [
                  const Icon(Icons.book, size: 20, color: Colors.white),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  Expanded(
                      child:Text(
                          "${exam.name}",
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 19
                          )
                      ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row (
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  const Icon(Icons.pin_drop, size: 20, color: Colors.white),
                  Padding(padding: EdgeInsets.only(left: 2)),
                  Text(
                      "Простории: ${exam.locations.toString().replaceAll(RegExp(r'[\[\]]'), '')}",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      )
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row (
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  const Icon(Icons.calendar_month, size: 20, color: Colors.white),
                  Padding(padding: EdgeInsets.only(left: 2)),
                  Text(
                      "Датум на испит: ${exam.getDate()}",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      )
                  ),
                ],
              ),

              SizedBox(height: 6),

              Row (
                children: [
                  Padding(padding: EdgeInsets.only(left: 32)),
                  Text(
                      "${exam.getRemainingTime()}",
                      style: TextStyle(
                          color: exam.examIsOver ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.error,
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
