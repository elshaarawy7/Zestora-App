import 'package:flutter/material.dart';

class QuintitySelectorCard extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int>? onChanged;
  final VoidCallback? onRemove;
  const QuintitySelectorCard({
    super.key,
    this.initialValue = 1,
    this.onChanged,
    this.onRemove,
  });

  @override
  State<QuintitySelectorCard> createState() => _QuintitySelectorCardState();
}

class _QuintitySelectorCardState extends State<QuintitySelectorCard> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.initialValue;
  }

  void add() {
    setState(() {
      quantity++;
    });

    widget.onChanged?.call(quantity);
  }

  void _remove() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      } else {
        widget.onRemove?.call();
      }
    });
  }

  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xffF4F7F2),
          radius: 20,
          child: IconButton(
            onPressed: _remove,
            icon: const Icon(Icons.delete, size: 20, color: Colors.black),
          ),
        ),
        SizedBox(width: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "$quantity",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(width: 10),

        CircleAvatar(
          backgroundColor: const Color(0xffF4F7F2),
          radius: 20,
          child: IconButton(
            onPressed: add,
            icon: const Icon(Icons.add, size: 20, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
