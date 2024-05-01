// import 'package:flutter/material.dart';
//
// class QuestionsSummary extends StatelessWidget {
//   const QuestionsSummary(this.summaryData, {super.key});
//
//   final List<Map<String, Object>> summaryData;
//
//   @override
//   Widget build(context) {
//     return SizedBox(
//       height: 300,
//       child: SingleChildScrollView(
//         child: Column(
//           children: summaryData.map((data) {
//             return Row(
//               children: [
//                 Text(((
//                   data['question_index'] as int) + 1).toString(),
//                   style: const TextStyle(color: Colors.white),
//                 ),
//                 Expanded(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         child: Text(
//                           data['question'] as String,
//                           style: const TextStyle(color: Colors.white),
//                           textAlign: TextAlign.start,
//                         ),
//                       ),
//                       const SizedBox(height: 5,),
//                       Text(
//                         data['user_answer'] as String,
//                         style: const TextStyle(color: Colors.purple),
//                         textAlign: TextAlign.start,
//                       ),
//                       Text(
//                         data['correct_answer'] as String,
//                         style: const TextStyle(color: Colors.blue),
//                         textAlign: TextAlign.start,
//                       )
//                     ],
//                   )
//                 )
//               ],
//             );
//           }).toList()
//         )
//       )
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:quiz/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children:
            summaryData.map((data) {
              return SummaryItem(data);
            }).toList(),
        ),
      ),
    );
  }
}