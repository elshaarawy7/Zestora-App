import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/widgets/prodact_card.dart';

class ProdactFreatchkenList extends  StatelessWidget {
  final List<ProdactModel> friedChickenList = [
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

Widget build(BuildContext context) {
    return  ListView.builder(
        scrollDirection: Axis.horizontal, // لو عاوزها سلايدر
        itemCount: friedChickenList.length,
        itemBuilder: (context, index) {
          return ProductCard(product:friedChickenList[index]);
        },
      );

  }


}