// Karim Toson || kareemtoson1@gmail.com || Mon Apr 27 2026 17:10:39

import 'package:hive_flutter/hive_flutter.dart';
import 'package:nti5/faetures/home/models/person_model.dart';

class HiveDataSource {
  final Box myBox = Hive.box('person');
  //CRUD

  //CREATE
  Future<void> save(PersonModel person) async {
    await myBox.put('person', person);
  }

  //read
  PersonModel get() {
    return myBox.get('person');
  }

  //delete
  Future<void> delete() async {
    await myBox.delete('person');
  }
}
