import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int>? onChanged;

  const QuantitySelector({super.key, this.initialValue = 1, this.onChanged});

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.initialValue;
  }

  void _increment() {
    setState(() {
      quantity++;
    });
    widget.onChanged?.call(quantity);
  }

  void _decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
      widget.onChanged?.call(quantity);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // زرار ناقص
        CircleAvatar(
          backgroundColor: const Color(0xffF4F7F2),
          radius: 20,
          child: IconButton(
            onPressed: _decrement,
            icon: const Icon(Icons.remove, size: 20),
          ),
        ),

        // العدد
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "$quantity",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        // زرار زائد
        CircleAvatar(
          backgroundColor: const Color(0xffF4F7F2),
          radius: 20,
          child: IconButton(
            onPressed: _increment,
            icon: const Icon(Icons.add, size: 20),
          ),
        ),
      ],
    );
  }
}
