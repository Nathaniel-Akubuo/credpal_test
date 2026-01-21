class Product {
  final String imageUrl;
  final num price;
  final num previousPrice;
  final String title;
  final String badgeImageUrl;

  Product({
    required this.imageUrl,
    required this.price,
    required this.previousPrice,
    required this.title,
    required this.badgeImageUrl,
  });

  static List<Product> sampleProducts = [
    Product(
      imageUrl: 'nokia-g20.png',
      price: 39780,
      previousPrice: 88000,
      title: 'Nokia G20',
      badgeImageUrl: 'pay-40.png',
    ),
    Product(
      imageUrl: 'iphone-xs-max.png',
      price: 295999,
      previousPrice: 315000,
      title: 'iPhone XS Max 4GB..',
      badgeImageUrl: 'ogabassey.png',
    ),
    Product(
      imageUrl: 'anker-soundcore.png',
      price: 39780,
      previousPrice: 88000,
      title: 'Anker Soundcore..',
      badgeImageUrl: 'okay-fones.png',
    ),
    Product(
      imageUrl: 'iphone-12-pro.png',
      price: 490500,
      previousPrice: 515000,
      title: 'iPhone 12 Pro',
      badgeImageUrl: 'imate-stores.png',
    ),
  ];
}
