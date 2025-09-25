import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/widgets/quintity_selector.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProdactModel product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),

            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.go(AppRouter.KHomePage);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Colors.black,
                  ),
                ),

                SizedBox(width: 100),

                Text(
                  "Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Spacer(),

                Icon(Icons.favorite, color: Colors.red, size: 25),
                SizedBox(width: 5),
                Icon(Icons.share, size: 25, color: Colors.black),
              ],
            ),

            SizedBox(height: 50),
            // صورة المنتج
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                product.image,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: index == 1 ? Colors.green : Colors.grey,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                QuantitySelector(
                  initialValue: 1,
                  onChanged: (value) {
                    print(" $value");
                  },
                ),
              ],
            ), 


            const SizedBox(height: 8), 

            Text("A classic favorite! Indulge in a crispy, thin crust topped with rich tomato sauce, layers of gooey mozzarella cheese, and delicious pepperoni slices. Perfectly baked with a hint of herbs for a mouth-watering experience in every bite. Read more...", 
            style: TextStyle(
              fontSize: 16 , 
              fontWeight: FontWeight.w400 , 
              color: Colors.grey , 
            ), 
            overflow: TextOverflow.ellipsis, 
            maxLines: 4,
            ) ,   

            SizedBox(height: 10,) , 

            Text("Size" , style: TextStyle(
              fontSize: 20 , 
              fontWeight: FontWeight.bold , 
              color: Colors.black ,
            ),) , 

            // السعر
            Text(
              "${product.price} EGP",
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 16),

            // وصف المنتج (ممكن تضيفه في الموديل)
            const SizedBox(height: 24),

            // زر الإضافة للسلة
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // هنا هتحط منطق الإضافة للسلة
                },
                child: const Text("Add to Cart"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
