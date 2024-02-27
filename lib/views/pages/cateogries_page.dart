// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/utils/route/app_routes.dart';
import 'package:ecommerce_app/view_models/categories_cubit/categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CategoriesCubit>(context);
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      bloc: cubit,
      buildWhen: (previous, current) =>
          current is CategoriesLoaded ||
          current is CategoriesInitial ||
          current is CategoriesError,
      builder: (context, state) {
        if (state is CategoriesError) {
          return Scaffold(
            body: Center(
              child: Text(state.message),
            ),
          );
        } else if (state is CategoriesInitial) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else if (state is CategoriesLoaded) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Category Items'),
            ),
            body: ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return InkWell(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          trailing: Text(
                            '\$${product.price}',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          title: Text(product.name),
                          leading: Image.network(
                            product.imgUrl,
                            width: 80,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).pushNamed(
                        AppRoutes.productDetails,
                        arguments: product,
                      );
                    },
                  );
                }),
          );
        } else {
          return const Center(child: CircularProgressIndicator.adaptive());
        }
      },
    );
  }
}
