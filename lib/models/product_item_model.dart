enum ProductSize {
  S,
  M,
  L,
  XL,
  XXL,
}

class ProductCategory {
  final String name;
  final String imgUrl;

  ProductCategory({required this.name, required this.imgUrl});
}

class ProductItemModel {
  final String id;
  final String name;
  final String imgUrl;
  final String description;
  bool isFavorite = false;
  final double price;
  final String category;
  final double averageRate;

  ProductItemModel({
    required this.id,
    required this.name,
    required this.imgUrl,
    this.isFavorite = false,
    this.description =
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    required this.price,
    required this.category,
    this.averageRate = 4.5,
  });

  ProductItemModel copyWith({
    String? id,
    String? name,
    String? imgUrl,
    String? description,
    double? price,
    String? category,
    double? averageRate,
    bool isFavorite = false,
    int? quantity,
    ProductSize? size,
  }) {
    return ProductItemModel(
      isFavorite: isFavorite,
      id: id ?? this.id,
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      description: description ?? this.description,
      price: price ?? this.price,
      category: category ?? this.category,
      averageRate: averageRate ?? this.averageRate,
    );
  }
}
List<ProductCategory> dummyCategoires = [
  ProductCategory(
    name: 'Clothes',
    imgUrl: 'assets/images/clothes.png',
  ),
  ProductCategory(
    name: 'Shoes',
    imgUrl: 'assets/images/shoes.png',
  ),
  ProductCategory(
    name: 'Groceries',
    imgUrl: 'assets/images/groceries.png',
  ),
  ProductCategory(
    name: 'Fruits',
    imgUrl: 'assets/images/fruits.png',
  ),
];

List<ProductItemModel> dummyProducts = [
  ProductItemModel(
    isFavorite: false,
    id: '1',
    name: 'T-shirt',
    imgUrl:
        'https://parspng.com/wp-content/uploads/2022/07/Tshirtpng.parspng.com_.png',
    price: 10,
    category: dummyCategoires[0].name,
  ),
  ProductItemModel(
    isFavorite: true,
    id: '2',
    name: 'Black Shoes',
    imgUrl: 'https://pngimg.com/d/men_shoes_PNG7475.png',
    price: 20,
    category: dummyCategoires[1].name,
  ),
  ProductItemModel(
    isFavorite: false,
    id: '3',
    name: 'Trousers',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2016/09/Trouser-Free-Download-PNG.png',
    price: 30,
    category: dummyCategoires[0].name,
  ),
  ProductItemModel(
    isFavorite: false,
    id: '4',
    name: 'Pack of Tomatoes',
    imgUrl:
        'https://parspng.com/wp-content/uploads/2022/12/tomatopng.parspng.com-6.png',
    price: 10,
    category: dummyCategoires[2].name,
  ),
  ProductItemModel(
    isFavorite: false,
    id: '5',
    name: 'Pack of Potatoes',
    imgUrl: 'https://pngimg.com/d/potato_png2398.png',
    price: 10,
    category: dummyCategoires[2].name,
  ),
  ProductItemModel(
    isFavorite: false,
    id: '6',
    name: 'Pack of Onions',
    imgUrl: 'https://pngimg.com/d/onion_PNG99213.png',
    price: 10,
    category: dummyCategoires[2].name,
  ),
  ProductItemModel(
    isFavorite: false,
    id: '7',
    name: 'Pack of Apples',
    imgUrl: 'https://pngfre.com/wp-content/uploads/apple-43-1024x1015.png',
    price: 10,
    category: dummyCategoires[3].name,
  ),
  ProductItemModel(
    isFavorite: false,
    id: '8',
    name: 'Pack of Oranges',
    imgUrl:
        'https://parspng.com/wp-content/uploads/2022/05/orangepng.parspng.com_-1.png',
    price: 10,
    category: dummyCategoires[3].name,
  ),
  ProductItemModel(
    isFavorite: false,
    id: '9',
    name: 'Pack of Bananas',
    imgUrl:
        'https://static.vecteezy.com/system/resources/previews/015/100/096/original/bananas-transparent-background-free-png.png',
    price: 10,
    category: dummyCategoires[3].name,
  ),
  ProductItemModel(
    isFavorite: false,
    id: '10',
    name: 'Pack of Mangoes',
    imgUrl: 'https://purepng.com/public/uploads/large/mango-tgy.png',
    price: 10,
    category: dummyCategoires[3].name,
  ),
  ProductItemModel(
    isFavorite: false,
    id: '11',
    name: 'Sweet Shirt',
    imgUrl:
        'https://www.usherbrand.com/cdn/shop/products/5uYjJeWpde9urtZyWKwFK4GHS6S3thwKRuYaMRph7bBDyqSZwZ_87x1mq24b2e7_1800x1800.png',
    price: 15,
    category: dummyCategoires[0].name,
  ),
];
