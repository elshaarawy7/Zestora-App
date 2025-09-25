import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/widgets/prodact_card.dart';

class ProdactListBuirger extends  StatelessWidget {
  final List<ProdactModel> burgerList = [
  ProdactModel(
    image: "assets/Burger/Frame 48095662 (6).png",
    price: "180EGP",
    oldPrice: "280",
    rating: "4.6",
    reviews: "200",
  ),
  ProdactModel(
    image: "assets/Burger/Frame 48095662 (7).png",
    price: "210EGP",
    oldPrice: "350",
    rating: "4.3",
    reviews: "150",
  ),
  ProdactModel(
    image: "assets/Burger/Frame 48095662 (8).png",
    price: "160EGP",
    oldPrice: "250",
    rating: "4.2",
    reviews: "130",
  ), 

  ProdactModel(
    image: "assets/Burger/Frame 48095662 (7).png",
    price: "210EGP",
    oldPrice: "350",
    rating: "4.3",
    reviews: "150",
  ),
  ProdactModel(
    image: "assets/Burger/Frame 48095662 (8).png",
    price: "160EGP",
    oldPrice: "250",
    rating: "4.2",
    reviews: "130",
  ),
];

  Widget build(BuildContext context) {
    return  ListView.builder(
        scrollDirection: Axis.horizontal, // لو عاوزها سلايدر
        itemCount: burgerList.length,
        itemBuilder: (context, index) {
          return ProductCard(product:burgerList [index]);
        },
      );

  }

} 