import 'package:flutter/material.dart';
import 'package:hive_db/db/functions/db_functions.dart';
import 'package:hive_db/db/model/data_model.dart';

const kHeight = SizedBox(height: 10);

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Name'),
          ),
          kHeight,
          TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Age'),
          ),
          kHeight,
          ElevatedButton.icon(
              onPressed: () {
                onAddButtonClicked();
              },
              icon: const Icon(Icons.person_add_sharp),
              label: const Text('Add Student'))
        ],
      ),
    );
  }

  Future<void> onAddButtonClicked() async {
    final _name = _nameController.text;
    final _age = _ageController.text;
    if (_name.isEmpty || _age.isEmpty) {
      return;
    } else {
      print('$_name $_age');
      final _student = StudentModel(name: _name, age: _age);
      addStudent(_student);
    }
  }
}
