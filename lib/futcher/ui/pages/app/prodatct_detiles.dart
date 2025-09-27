import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/futcher/ui/model/card_item.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/widgets/quintity_selector.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProdactModel product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  String selectedSize = "Medium";
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    double basePrice = widget.product.sizes[selectedSize] ?? 0;
    double totalPrice = basePrice * quantity;
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
                widget.product.image,
                height: 350,
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
                  widget.product.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                QuantitySelector(
                  initialValue: quantity,
                  onChanged: (value) {
                    setState(() {
                      quantity = value;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 8),

            Text(
              "A classic favorite! Indulge in a crispy, thin crust topped with rich tomato sauce, layers of gooey mozzarella cheese, and delicious pepperoni slices. Perfectly baked with a hint of herbs for a mouth-watering experience in every bite. Read more...",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),

            SizedBox(height: 10),

            Text(
              "Size",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10),

            Row(
              children: widget.product.sizes.keys.map((size) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = size;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: selectedSize == size
                          ? Colors.green
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      size,
                      style: TextStyle(
                        color: selectedSize == size
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

            SizedBox(height: 10),

            Container(
              height: 50,
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  side: BorderSide(color: Colors.green),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 5),
                  Text(
                    widget.product.rating,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),

                  Spacer(),

                  Icon(Icons.lock_clock, color: Color(0xff24B5D4)),
                  SizedBox(width: 5),
                  Text(
                    "20mins",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            // السعر
            Text(
              "${totalPrice} EGP",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // وصف المنتج (ممكن تضيفه في الموديل)

            // زر الإضافة للسلة
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  double basePrice = widget.product.sizes[selectedSize] ?? 0.0;
                  double totalPrice = basePrice * quantity;

                  final cartItem = CartItem(
                    product: widget.product,
                    size: selectedSize,
                    quantity: quantity,
                    
                  );

                  context.push(
                    AppRouter.KCardPage,
                    extra: [cartItem ], // بعتنا الليست فيها منتج واحد كبداية
                  );
                },

                child: Text(
                  "Add to Cart",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
