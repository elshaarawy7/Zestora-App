class ProdactModel {
  final String title;
  final String image;
  final String price;
  final String oldPrice;
  final String rating;
  final String reviews;
  final Map<String, double> sizes;

  ProdactModel({
    this.sizes = const {"Small": 100, "Medium": 200, "Large": 300},
    required this.title,
    required this.image,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.reviews,
  });
}
