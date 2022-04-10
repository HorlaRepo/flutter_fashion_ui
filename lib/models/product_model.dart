class Product {
  final String title;
  final String price;
  final String imageUrl;
  final bool isLiked;

  Product({
    required this.title,
    required this.price,
    required this.imageUrl,
    this.isLiked = false,
  });
}

final List<Product> products = [
  Product(
      title: 'Sweat Top',
      price: '\$2,280',
      imageUrl: 'assets/images/img8.jpg',
      isLiked: false),
  Product(
      title: 'Brown Sweats',
      price: '\$500',
      imageUrl: 'assets/images/img2.png',
      isLiked: true),
  Product(
      title: 'White Suite',
      price: '\$4,280',
      imageUrl: 'assets/images/img3.png',
      isLiked: true),
  Product(
      title: 'Trendy Top',
      price: '\$980',
      imageUrl: 'assets/images/img4.png',
      isLiked: false),
  Product(
      title: 'Ankara Gown',
      price: '\$1,450',
      imageUrl: 'assets/images/img5.png',
      isLiked: true),
  Product(
      title: 'Blue Gown',
      price: '\$1,260',
      imageUrl: 'assets/images/img6.png',
      isLiked: false),
  Product(
      title: 'Off Gown',
      price: '\$1,370',
      imageUrl: 'assets/images/img7.jpg',
      isLiked: true),
  Product(
      title: 'Cream Jumpie',
      price: '\$800',
      imageUrl: 'assets/images/img8.jpg',
      isLiked: false),
  Product(
      title: 'Cream Gown',
      price: '\$700',
      imageUrl: 'assets/images/img9.png',
      isLiked: false),
  Product(
      title: 'Blue Shirt',
      price: '\$450',
      imageUrl: 'assets/images/img10.png',
      isLiked: false),
];
