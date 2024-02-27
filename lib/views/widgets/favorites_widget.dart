// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/view_models/favorite_cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesWidget extends StatelessWidget {
  final ProductItemModel productItem;

  const FavoritesWidget({
    Key? key,
    required this.productItem,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (productItem.isFavorite == true) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(productItem.name),
            subtitle: Text(
              '${productItem.category} - \$${productItem.price}',
            ),
            leading: Image.network(
              width: 80,
              height: 100,
              productItem.imgUrl,
              fit: BoxFit.fill,
            ),
            trailing: IconButton(
                onPressed: () {
                  BlocProvider.of<FavoriteCubit>(context)
                      .isFavorite(productItem.id);
                },
                icon: const Icon(Icons.favorite)),
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
