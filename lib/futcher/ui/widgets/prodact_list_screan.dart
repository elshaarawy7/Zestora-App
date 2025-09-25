import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/widgets/prodact_card.dart';

class ProductListScreenAllProdact extends StatelessWidget {
  final List<ProdactModel> allProducts = [

  // 🍝 Pasta
  ProdactModel(
    image: "assets/pasta/Frame 48095662 (14).png",
    price: "150EGP",
    oldPrice: "200",
    rating: "4.5",
    reviews: "110",
    title: "Spaghetti souce",
  ),
  ProdactModel(
    image: "assets/pasta/Frame 48095662 (15).png",
    price: "210EGP",
    oldPrice: "260",
    rating: "4.6",
    reviews: "98",
    title: "Shrimp pasta",
  ),
  ProdactModel(
    image: "assets/pasta/Frame 48095662 (16).png",
    price: "250EGP",
    oldPrice: "300",
    rating: "4.4",
    reviews: "75",
    title: "Pasta white souce",
  ),
  ProdactModel(
    image: "assets/pasta/Frame 48095662 (17).png",
    price: "300EGP",
    oldPrice: "360",
    rating: "4.7",
    reviews: "120",
    title: "Pasta with vegetables",
  ),

  // 🍕 Pizza
  ProdactModel(
    image: "assets/Pizaa/Frame 48095662 (1).png",
    price: "210EGP",
    oldPrice: "280",
    rating: "4.8",
    reviews: "150",
    title: "Classic Beef Pizza",
  ),
  ProdactModel(
    image: "assets/Pizaa/Frame 48095662 (2).png",
    price: "180EGP",
    oldPrice: "230",
    rating: "4.3",
    reviews: "70",
    title: "Fruit Pizza",
  ), 

   ProdactModel(
    image: "assets/Pizaa/Frame 48095662 (3).png",
    price: "210EGP",
    oldPrice: "280",
    rating: "4.8",
    reviews: "150",
    title: "Classic Beef Pizza",
  ),
  ProdactModel(
    image: "assets/Pizaa/Frame 48095662 (4).png",
    price: "180EGP",
    oldPrice: "230",
    rating: "4.3",
    reviews: "70",
    title: "Spaghetti souce",
  ),

   ProdactModel(
    image: "assets/Pizaa/Frame 48095662 (3).png",
    price: "210EGP",
    oldPrice: "280",
    rating: "4.8",
    reviews: "150",
    title: "Pasta with vegetables",
  ),

  // 🍔 Burger
   ProdactModel(
    image: "assets/Burger/Frame 48095662 (5).png",
    price: "180EGP",
    oldPrice: "250",
    rating: "4.6",
    reviews: "200",
    title: "Cheese Burger",
  ),
  ProdactModel(
    image: "assets/Burger/Frame 48095662 (6).png",
    price: "210EGP",
    oldPrice: "300",
    rating: "4.4",
    reviews: "130",
    title: "Double Beef Burger",
  ), 

  ProdactModel(
    image: "assets/Burger/Frame 48095662 (7).png",
    price: "210EGP",
    oldPrice: "300",
    rating: "4.4",
    reviews: "130",
    title: "Double Beef Burger",
  ), 

  ProdactModel(
    image: "assets/Burger/Frame 48095662 (8).png",
    price: "210EGP",
    oldPrice: "300",
    rating: "4.4",
    reviews: "130",
    title: "Double Beef Burger",
  ),

  // 🍗 Fried Chicken
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (9).png",
    price: "250EGP",
    oldPrice: "400",
    rating: "4.9",
    reviews: "300",
    title: "Fried Chicken",
  ),
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (10).png",
    price: "300EGP",
    oldPrice: "450",
    rating: "4.5",
    reviews: "180",
    title: "Grilled Chicken",
  ), 
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (11).png",
    price: "250EGP",
    oldPrice: "400",
    rating: "4.9",
    reviews: "300",
    title: "Fried Chicken",
  ),
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (12).png",
    price: "300EGP",
    oldPrice: "450",
    rating: "4.5",
    reviews: "180",
    title: "Grilled Chicken",
  ),
  ProdactModel(
    image: "assets/Fried Chiken/Frame 48095662 (13).png",
    price: "250EGP",
    oldPrice: "400",
    rating: "4.9",
    reviews: "300",
    title: "Fried Chicken",
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
