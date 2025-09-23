import 'package:flutter/material.dart';
import 'package:zestora/core/utils/color_app.dart';

class ProductCard extends StatefulWidget {
  final String image;
  final String price;
  final String oldPrice;
  final String rating;
  final String reviews;

  const ProductCard({
    super.key,
    required this.image,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.reviews,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
   bool isFavorat = false ;

  final List<String> AllProdact = [
    
  ]; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, 
      width: 250, 
      child: Card(
        color: const Color(0xffF9F9F9),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // شكل الكارد أشيك
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Image.asset(widget.image  , width: double.infinity, height: 175, fit: BoxFit.cover,),
              
            const SizedBox(height: 8),
              
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.price,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        widget.price,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ), 

            const SizedBox(height: 5),

             Row(
              children: [
                const Icon(Icons.star, size: 15, color: Colors.amber),
                const SizedBox(width: 5),
                Text(
                  widget.rating,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "(${widget.reviews})",
                  style: const TextStyle(
                    color: Color(0xff828282),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  widget.oldPrice,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ), 

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorat = !isFavorat ;
                      });
                    },
                    icon: Icon(
                      isFavorat ? Icons.favorite : Icons.favorite_border , 
                      color: isFavorat ? Colors.red : Colors.black,
                    ),
                  ) ,  

                  Container(
                    height: 25, 
                    width: 25, 
                    decoration: BoxDecoration(
                      color: ColorApp.grean , 
                      borderRadius: BorderRadius.circular(75) , 
                    ), 
                    child: Center(
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.add , color: Colors.white,), 
                        onPressed: () {
                          
                        },
                      ),
                    ),
                  )
                  
                ],
              )

                ],
              ),
            ),
              
              
           
              
            
          ],
        ),
      ),
    );
  }
}
