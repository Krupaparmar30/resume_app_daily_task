import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/utils/globle.dart';

class detailsPage extends StatefulWidget {
  const detailsPage({super.key});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
       Center(
         child: Padding(
           padding: const EdgeInsets.only(top: 200),
           child: Container(
             height: 200,
             width: 300,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.white,
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey,spreadRadius: 2,
                   blurRadius: 2,
                   offset: Offset(0,2)
                 )
               ]
             ),
             child: Column(
               children: [
                 Text(email.toString(),style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 28
                 ),),
                 Text(password,style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 28
                 ),),
               ],
             ),
           ),
         ),
       )
      ],
    ),
    );
  }
}
