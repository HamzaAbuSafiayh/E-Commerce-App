import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/models/product_item_model.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());

  void getItems(String categoryName) async {
    emit(CategoriesError('hey'));
    debugPrint(categoryName);
    final products = dummyProducts
        .where((product) => product.category == categoryName)
        .toList();
    for (int i = 0; i < products.length; i++) {
      debugPrint(products[i].category);
    }
    emit(CategoriesLoaded(products));
  }
}
