part of models;

class Product {
  final int id;
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> products = [
  Product(
    id: 1,
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 165000,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    id: 2,
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 99000,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    id: 3,
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180000,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    id: 4,
    image: "assets/images/product_3.png",
    title: "Casual Nolin T-Shirts",
    price: 149000,
    bgColor: const Color(0xFFEEEEED),
  ),
];
