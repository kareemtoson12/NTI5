// Karim Toson || kareemtoson1@gmail.com || Fri Apr 17 2026 19:36:38

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/items/cubit/states.dart';

class ItemsCubit extends Cubit<ItemsStates> {
  ItemsCubit()
    : super(
        ItemsInitial(
          items: [
            Item(name: 'a', isFav: false),
            Item(name: 'b', isFav: false),
            Item(name: 'c', isFav: false),
          ],
        ),
      );

  void UpdatedItems(int index) {
    final List<Item> updatedList = state.items;
    final item = updatedList[index];

    updatedList[index] = Item(name: item.name, isFav: !item.isFav);
  }
}
