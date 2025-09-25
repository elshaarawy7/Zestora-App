import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';

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
            // صورة المنتج
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                product.image,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            // اسم المنتج
            Text(
              product.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

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
            )
          ],
        ),
      ),
    );
  }
}
