// package:zestora/futcher/ui/model/card_item.dart
import 'package:zestora/futcher/ui/model/prodact_model.dart';

class CartItem {
  final ProdactModel product;
  String size;
  int quantity;

  CartItem({required this.product, this.size = 'Medium', this.quantity = 1});

  double get unitPrice {
    final raw = product.price.replaceAll(RegExp(r'[^0-9.]'), '');
    return double.tryParse(raw) ?? 0.0;
  }

  double get totalPrice => unitPrice * quantity;
}
