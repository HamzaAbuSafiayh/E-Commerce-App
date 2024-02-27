part of 'favorite_cubit.dart';

sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}

final class FavoriteLoading extends FavoriteState {}

final class FavoriteLoaded extends FavoriteState {
  final List<ProductItemModel> favoriteProducts;

  FavoriteLoaded({required this.favoriteProducts});
}

final class FavoriteError extends FavoriteState {
  final String message;
  FavoriteError(this.message);
}
