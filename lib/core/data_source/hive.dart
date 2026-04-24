// Karim Toson || kareemtoson1@gmail.com || Fri Apr 24 2026 16:58:02
import 'package:hive/hive.dart';

class HiveDataSource {
  final Box mybox = Hive.box('ageBox');

  //Crud
  //create
  Future<void> saveAge(int newAge) async {
    await mybox.put('age', newAge);
  }

  //read
  int getAge() {
    return mybox.get('age');
  }

  //update
  Future<void> updateSAge(int newAge) async {
    await mybox.put('age', newAge);
  }

  //delete
  Future<void> deleteAge() async {
    await mybox.delete('age');
  }
}
