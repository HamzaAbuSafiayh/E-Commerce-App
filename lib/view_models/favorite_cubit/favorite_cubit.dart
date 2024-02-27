import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());

  void isFavorite(String productId) {
    var index = dummyProducts.indexWhere((product) => product.id == productId);

    ProductItemModel updatedProduct = dummyProducts[index]
        .copyWith(isFavorite: !dummyProducts[index].isFavorite);
    dummyProducts[index] = updatedProduct;

    emit(FavoriteLoaded(favoriteProducts: dummyProducts));
  }
}
