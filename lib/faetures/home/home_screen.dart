// Karim Toson || kareemtoson1@gmail.com || Mon Apr 27 2026 16:19:41

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController ageController;
  late TextEditingController nameController;
  @override
  void initState() {
    ageController = TextEditingController();
    nameController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    ageController.dispose();
    nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Name'),
              controller: nameController,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'age'),
              controller: ageController,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('save')),
                ElevatedButton(onPressed: () {}, child: Text('get')),
                ElevatedButton(onPressed: () {}, child: Text('delete')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
