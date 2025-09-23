import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/widgets/prodact_card.dart';

class ListViewBuilderCardProdact extends StatelessWidget {
  const ListViewBuilderCardProdact({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10, 
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ProductCard(
                      image: 'assets/unsplash_a66sGfOnnqQ.png',
                      rating: '4.4', 
                      price: '150EGP', 
                      oldPrice: '200EGP', 
                      reviews: '10', 
                     ),
        );
      },
    );
  }
}