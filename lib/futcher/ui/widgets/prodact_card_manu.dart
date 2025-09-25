import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';

class ProdactCardManu extends StatefulWidget {
  final List<ProdactModel> products; // هنا بنستقبل الليست

  const ProdactCardManu({super.key, required this.products});

  @override
  State<ProdactCardManu> createState() => _ProdactCardManuState();
}

class _ProdactCardManuState extends State<ProdactCardManu> {
  late List<bool> favorites;

  @override
  void initState() {
    super.initState();
    favorites = List.generate(widget.products.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.products.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final product = widget.products[index];
        return Padding(
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
                  Image.asset(
                    product.image,
                    height: 120,
                    width: 120,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.price,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${product.oldPrice} EGP",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Icon(
                        Icons.favorite , color: Colors.red,
                      ),
                      const SizedBox(height: 20),
                      const CircleAvatar(
                        backgroundColor: Color(0xFF4CAF50),
                        radius: 15,
                        child: Icon(Icons.add, color: Colors.white, size: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
