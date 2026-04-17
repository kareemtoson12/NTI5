// Karim Toson || kareemtoson1@gmail.com || Fri Apr 17 2026 19:36:31

class Item {
  final String name;
  final bool isFav;

  Item({required this.name, required this.isFav});
}

abstract class ItemsStates {
  final List<Item> items;

  ItemsStates({required this.items});
}

class ItemsInitial extends ItemsStates {
  ItemsInitial({required super.items});
}

class UpdatedItems extends ItemsStates {
  UpdatedItems({required super.items});
}
