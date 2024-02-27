import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/views/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: 'Search...',
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Last Search',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Clear All',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Chip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: AppColors.grey),
                  ),
                  label: Text('Electronics',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.grey)),
                  onDeleted: () {},
                ),
                const SizedBox(width: 5),
                Chip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: AppColors.grey),
                  ),
                  label: Text('Pants',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.grey)),
                  onDeleted: () => {},
                ),
              ],
            ),
            Row(
              children: [
                Chip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: AppColors.grey),
                  ),
                  label: Text('Three Second',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.grey)),
                  onDeleted: () {},
                ),
                const SizedBox(width: 5),
                Chip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: AppColors.grey),
                  ),
                  label: Text('Long Shirt',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.grey)),
                  onDeleted: () => {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Popular Search',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            CustomListTile(
              height: 90,
              leading: Image.network(
                width: 100,
                dummyProducts[0].imgUrl,
              ),
              title: Text(
                'T-shirt',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subTitle: const Text('1.6k Search Today'),
              trailing: FilledButton.tonal(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pink.shade100),
                  ),
                  onPressed: () {},
                  child:
                      const Text('Hot', style: TextStyle(color: Colors.red))),
            ),
            const SizedBox(height: 10),
            CustomListTile(
              height: 90,
              leading: Image.network(
                width: 100,
                dummyProducts[1].imgUrl,
              ),
              title: Text(
                'T-shirt',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subTitle: const Text('1.6k Search Today'),
              trailing: FilledButton.tonal(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 255, 213, 227)),
                  ),
                  onPressed: () {},
                  child: const Text('New',
                      style: TextStyle(color: Colors.deepOrange))),
            ),
            const SizedBox(height: 10),
            CustomListTile(
              height: 90,
              leading: Image.network(
                width: 100,
                dummyProducts[3].imgUrl,
              ),
              title: Text(
                'T-shirt',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subTitle: const Text('1.6k Search Today'),
              trailing: FilledButton.tonal(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 225, 248, 237)),
                  ),
                  onPressed: () {},
                  child: const Text('Popular',
                      style:
                          TextStyle(color: Color.fromARGB(255, 61, 243, 155)))),
            ),
            const SizedBox(height: 10),
            CustomListTile(
              height: 90,
              leading: Image.network(
                width: 100,
                dummyProducts[4].imgUrl,
              ),
              title: Text(
                'T-shirt',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subTitle: const Text('1.6k Search Today'),
              trailing: FilledButton.tonal(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 255, 213, 227)),
                  ),
                  onPressed: () {},
                  child: const Text('New',
                      style: TextStyle(color: Colors.deepOrange))),
            ),
          ],
        ),
      ),
    );
  }
}
