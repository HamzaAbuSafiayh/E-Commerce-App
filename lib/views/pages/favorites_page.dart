import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/view_models/favorite_cubit/favorite_cubit.dart';
import 'package:ecommerce_app/views/widgets/favorites_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit(),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: dummyProducts.length,
              itemBuilder: (context, index) {
                return FavoritesWidget(productItem: dummyProducts[index]);
              });
        },
      ),
    );
  }
}
