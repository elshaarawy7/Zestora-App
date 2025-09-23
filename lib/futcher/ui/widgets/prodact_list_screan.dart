import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/widgets/prodact_card.dart';

class ProductListScreen extends StatelessWidget {
  final List<ProdactModel> allProducts = [
    ProdactModel(
      image: 'assets/unsplash_a66sGfOnnqQ.png',
      price: '153EGP',
      oldPrice: '3000',
      rating: '5.5',
      reviews: '15',
    ),
    ProdactModel(
      image: 'assets/unsplash_a66sGfOnnqQ.png',
      price: '200EGP',
      oldPrice: '4000',
      rating: '4.2',
      reviews: '21',
    ),
    ProdactModel(
      image: 'assets/unsplash_a66sGfOnnqQ.png',
      price: '99EGP',
      oldPrice: '150',
      rating: '4.8',
      reviews: '100',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        scrollDirection: Axis.horizontal, // لو عاوزها سلايدر
        itemCount: allProducts.length,
        itemBuilder: (context, index) {
          return ProductCard(product: allProducts[index]);
        },
      );

  }
}
