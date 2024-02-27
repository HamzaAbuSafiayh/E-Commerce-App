import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/utils/route/app_routes.dart';
import 'package:flutter/material.dart';

class CategoriesTabView extends StatelessWidget {
  const CategoriesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyCategoires.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamed(
                AppRoutes.category,
                arguments: dummyCategoires[index].name,
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(dummyCategoires[index].name),
                  leading: Image.asset(
                    width: 80,
                    height: 100,
                    dummyCategoires[index].imgUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
