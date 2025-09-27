// package:zestora/futcher/ui/screens/card_page.dart
import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/data/cart_data.dart';
import 'package:zestora/futcher/ui/widgets/quintity_selector_card.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    final items = cartItems; // global
    double subTotal = items.fold(0.0, (sum, item) => sum + item.totalPrice);
    double delivery = items.isEmpty ? 0.0 : 50.0;
    double total = subTotal + delivery;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 50),
                const Text(
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
              child: items.isEmpty
                  ? const Center(child: Text("Your cart is empty"))
                  : ListView.builder(
                      itemCount: items.length,

                      itemBuilder: (context, index) {
                        final item = items[index];
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
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.product.title,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "${item.totalPrice.toStringAsFixed(2)} EGP",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                QuintitySelectorCard(
                                  initialValue: item.quantity,
                                  onChanged: (value) {
                                    setState(() {
                                      item.quantity = value;
                                    });
                                  },
                                  onRemove: () {
                                    setState(() {
                                      items.removeAt(index);
                                    });
                                  },
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
                  _buildRow("Subtotal", subTotal),
                  _buildRow("Delivery Charges", delivery),
                  _buildRow("Total", total, bold: true),
                  const SizedBox(height: 16),
                ],
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
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
}
