import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nti5/faetures/home/home_screen.dart';
import 'package:nti5/faetures/home/models/person_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(PersonModelAdapter());
  await Hive.openBox('person');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
