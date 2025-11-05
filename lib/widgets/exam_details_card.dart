import 'package:mis_lab_1/models/exam.dart';

import 'package:flutter/material.dart';

class DetailedExamData extends StatelessWidget{
  const DetailedExamData(Exam exam, {super.key,});

  @override
  Widget build(BuildContext context){
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.book, size: 40, color: Theme.of(context).colorScheme.inversePrimary),
                Padding(padding: EdgeInsets.only(left: 8)),
                Expanded(
                    child: Text(
                      exam.name,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.w900,
                          fontSize: 26
                      ),
                    )
                )
              ],
            ),

            SizedBox(height: 40),

            Row(
              children: [
                Icon(Icons.pin_drop, size: 20, color: Theme.of(context).colorScheme.inversePrimary),
                Padding(padding: EdgeInsets.only(left: 6)),
                Expanded(
                    child: Text(
                      "Простории:",
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.w700,
                          fontSize: 20
                      ),
                    )
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 26)),
                Expanded(
                    child: Text(
                      "${exam.locations.toString().replaceAll(RegExp(r'[\[\]]'), '')}",
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),
                    )
                )
              ],
            ),

            SizedBox(height: 40),

            Row(
              children: [
                Icon(Icons.calendar_month, size: 20, color: Theme.of(context).colorScheme.inversePrimary),
                Padding(padding: EdgeInsets.only(left: 6)),
                Expanded(
                    child: Text(
                      "Датум на испитот:",
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.w700,
                          fontSize: 20
                      ),
                    )
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 26)),
                Expanded(
                    child: Text(
                      "${exam.getDate()}",
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),
                    )
                )
              ],
            ),

            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 26)),
                Expanded(
                    child: Text(
                      "${exam.getRemainingTime()}",
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                          color: exam.examIsOver ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.error,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),
                    )
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}