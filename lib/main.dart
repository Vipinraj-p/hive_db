import 'package:flutter/material.dart';
import 'package:hive_db/db/model/data_model.dart';
import 'package:hive_db/screens/home/screen_home.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ScreenHome()));
}
