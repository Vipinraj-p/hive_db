import 'package:flutter/material.dart';
import 'package:hive_db/db/functions/db_functions.dart';
import 'package:hive_db/screens/home/widgets/add_student_widget.dart';
import 'package:hive_db/screens/home/widgets/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 111, 121, 118),
        leading: const Icon(
          Icons.storage_outlined,
          color: Color.fromARGB(255, 1, 82, 107),
        ),
        title: const Text(
          'Students DB -Hive',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 229, 250, 245),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              AddStudentWidget(),
              const Expanded(child: ListStudentWidget())
            ],
          ),
        ),
      ),
    );
  }
}
