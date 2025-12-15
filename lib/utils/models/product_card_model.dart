class ProductCardModel {
  final String imageUrl;
  final String name;
  final double price;
  final String location;

  ProductCardModel({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.location,
  });
}

final List<ProductCardModel> popularProducts = [
  ProductCardModel(
    imageUrl: 'assets/product1.jpg',
    name: 'iPhone 12 Pro Max',
    price: 999.99,
    location: 'Muscat, Oman',
  ),
  ProductCardModel(
    imageUrl: 'assets/product2.jpg',
    name: 'Samsung Galaxy S21',
    price: 799.99,
    location: 'Dubai, UAE',
  ),
  ProductCardModel(
    imageUrl: 'assets/product3.jpg',
    name: 'Sony WH-1000XM4 Headphones',
    price: 349.99,
    location: 'Riyadh, KSA',
  ),
  ProductCardModel(
    imageUrl: 'assets/product1.jpg',
    name: 'Dell XPS 13 Laptop',
    price: 1199.99,
    location: 'Cairo, Egypt',
  ),
];