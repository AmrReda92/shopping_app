class ProductModel {
  final String image;
  final String title;
  final double price;
  final double rate;
  final int rateCount;

  ProductModel({required this.image,
    required this.title,
    required this.price,
    required this.rate,
    required this.rateCount}
      );
}

List<ProductModel> productModel = [
  ProductModel(
      image: "assets/images/woman.png",
      title: "woman's wear",
      price: 100.6,
      rate: 4.8,
      rateCount: 200
  ),
  ProductModel(
      image: "assets/images/woman.png",
      title: "woman's wear",
      price: 100.6,
      rate: 4.8,
      rateCount: 200
  ),
  ProductModel(
      image: "assets/images/woman.png",
      title: "woman's wear",
      price: 100.6,
      rate: 4.8,
      rateCount: 200
  ),
];