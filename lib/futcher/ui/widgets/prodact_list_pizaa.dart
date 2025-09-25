import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/widgets/prodact_card.dart';

class ProdactListPizaa extends StatelessWidget {
  final List<ProdactModel> pizzaList = [
  ProdactModel(
    image: "assets/Pizaa/Frame 48095662 (1).png",
    price: "200EGP",
    oldPrice: "400",
    rating: "4.5",
    reviews: "120",
  ),
  ProdactModel(
    image: "assets/Pizaa/Frame 48095662 (2).png",
    price: "99EGP",
    oldPrice: "150",
    rating: "4.8",
    reviews: "100",
  ),
  ProdactModel(
    image: "assets/Pizaa/Frame 48095662 (3).png",
    price: "150EGP",
    oldPrice: "250",
    rating: "4.7",
    reviews: "85",
  ),
  ProdactModel(
    image: "assets/Pizaa/Frame 48095662 (4).png",
    price: "175EGP",
    oldPrice: "300",
    rating: "4.6",
    reviews: "90",
  ),
  ProdactModel(
    image: "assets/Pizaa/Frame 48095662.png",
    price: "220EGP",
    oldPrice: "350",
    rating: "4.4",
    reviews: "60",
  ),
];


  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        scrollDirection: Axis.horizontal, // لو عاوزها سلايدر
        itemCount: pizzaList.length,
        itemBuilder: (context, index) {
          return ProductCard(product:pizzaList [index]);
        },
      );

  }

}