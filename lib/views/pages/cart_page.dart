import 'package:ecommerce_app/models/cart_orders_model.dart';
import 'package:ecommerce_app/view_models/product_details_cubit/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsCubit(),
      child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
        builder: (context, state) {
          final double totalprice = _calculateTotalPrice();

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: dummyCartOrders.length,
                    itemBuilder: (context, index) {
                      final cartOrder = dummyCartOrders[index];
                      return Card(
                        child: ListTile(
                          leading: Image.network(
                            cartOrder.product.imgUrl,
                            width: 80,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                          title: Text(cartOrder.product.name),
                          subtitle: Text(
                              '${cartOrder.product.price} x ${cartOrder.quantity} = \$${cartOrder.product.price * cartOrder.quantity} Size = ${cartOrder.size.toString().split('.').last}'),
                          trailing: InkWell(
                            child: const Icon(Icons.delete),
                            onTap: () {
                              BlocProvider.of<ProductDetailsCubit>(context)
                                  .deleteFromCart(cartOrder.product.id);
                            },
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Price: \$${totalprice.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  double _calculateTotalPrice() {
    double total = 0;
    for (final cartOrder in dummyCartOrders) {
      total += cartOrder.product.price * cartOrder.quantity;
    }
    return total;
  }
}
