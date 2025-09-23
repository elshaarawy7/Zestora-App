import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/widgets/prodact_card.dart';

class ProdactListPizaa extends StatelessWidget {
  final List<ProdactModel> allProducts = [

  // 🍕 Pizaa
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
    image: "assets/Pizaa/Frame 48095662 (5).png",
    price: "220EGP",
    oldPrice: "350",
    rating: "4.4",
    reviews: "60",
  ),

  // 🍔 Burger
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

  // 🍗 Fried Chiken
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (9).png",
    price: "250EGP",
    oldPrice: "400",
    rating: "4.9",
    reviews: "300",
  ),
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (10).png",
    price: "199EGP",
    oldPrice: "280",
    rating: "4.4",
    reviews: "90",
  ),
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (11).png",
    price: "230EGP",
    oldPrice: "350",
    rating: "4.7",
    reviews: "140",
  ),
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (12).png",
    price: "270EGP",
    oldPrice: "420",
    rating: "4.8",
    reviews: "220",
  ),
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (13).png",
    price: "300EGP",
    oldPrice: "450",
    rating: "4.9",
    reviews: "180",
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