part of models;

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: products[0], numOfItem: 1),
  Cart(product: products[1], numOfItem: 1),
  Cart(product: products[2], numOfItem: 1),
];
