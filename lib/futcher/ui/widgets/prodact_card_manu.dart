import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/futcher/ui/data/all_prodact_data.dart';
import 'package:zestora/futcher/ui/data/cart_data.dart'; // ✅ cartItems global
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/model/card_item.dart'; // ✅ CartItem model

class ProdactCardManu extends StatefulWidget {
  final List<ProdactModel> products;

  const ProdactCardManu({super.key, required this.products});

  @override
  State<ProdactCardManu> createState() => _ProdactCardManuState();
}

class _ProdactCardManuState extends State<ProdactCardManu> {
  List<bool> isFavoirates = [];

  @override
  void initState() {
    super.initState();
    // نعمل ليست بنفس طول المنتجات ونخليها كلها false
    isFavoirates = List.generate(widget.products.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.products.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final product = widget.products[index];

        return GestureDetector(
          onTap: () {
            // ✅ يفتح صفحة التفاصيل بالـ GoRouter
            context.go(
              AppRouter.KProductDetailsScreen,
              extra: allProducts[index],
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Image.asset(product.image, height: 120, width: 120),
                    const SizedBox(width: 10),

                    // تفاصيل المنتج
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          product.price,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),

                    const Spacer(),

                    // Favorite + Add
                    Column(
                      children: [
                        // ❤️ زرار favorite
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isFavoirates[index] = !isFavoirates[index];
                            });
                          },
                          icon: Icon(
                            isFavoirates[index]
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isFavoirates[index]
                                ? Colors.red
                                : Colors.black,
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ➕ زرار الإضافة للكارت
                        CircleAvatar(
                          backgroundColor: const Color(0xFF4CAF50),
                          radius: 15,
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  // لو المنتج موجود في الكارت نزود كميته
                                  final existingIndex = cartItems.indexWhere(
                                      (c) => c.product.title == product.title);

                                  if (existingIndex >= 0) {
                                    cartItems[existingIndex].quantity++;
                                  } else {
                                    cartItems.add(CartItem(
                                      product: product,
                                      size: 'Medium',
                                      quantity: 1,
                                    ));
                                  }
                                });

                                // Snackbar تأكيد
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        "${product.title} added to cart"),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.add,
                                  color: Colors.white, size: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
