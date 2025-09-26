import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/futcher/ui/model/card_item.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key, required this.cartItems});

  final List<CartItem> cartItems; 

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    double subTotal = widget.cartItems.fold(0, (sum, item) => sum + item.totalPrice);
    double delevry = 50;
    double total = subTotal + delevry;

    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.go(AppRouter.KProductDetailsScreen);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  ),
                ),

                SizedBox(width: 50),

                Text(
                  "Cart",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            Expanded(
              child: ListView.builder(
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  final item = widget.cartItems[index];
                  return SizedBox(
                    height: 100,
                    child: Card(
                      shadowColor: Colors.black,
                      color: Colors.white,
                      elevation: 2,
                      child: Row(
                        children: [
                          Image.asset(
                            item.product.image,
                            width: 75,
                            height: 75,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.product.title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 10),

                              Text("${item.product.price} EGP"),
                            ],
                          ),

                          Spacer(),

                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0xffF4F7F2),
                                radius: 20,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),

                              Text("1"),

                              SizedBox(width: 10),

                              CircleAvatar(
                                backgroundColor: const Color(0xffF4F7F2),
                                radius: 20,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      _buildRow("Subtotal", subTotal),
                      _buildRow("Delivery Charges", delevry),
                      _buildRow("Total", total, bold: true),
                      const SizedBox(height: 16),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildRow(String title, double value, {bool bold = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      Text(
        "${value.toStringAsFixed(2)} EGP",
        style: TextStyle(
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    ],
  );
}
