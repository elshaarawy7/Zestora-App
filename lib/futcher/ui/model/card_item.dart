import 'package:zestora/futcher/ui/model/prodact_model.dart';

class CartItem {
  
  final ProdactModel product;
  final String size;
  final int quantity;
  final double totalPrice;

  CartItem({
    required this.product,
    required this.size,
    required this.quantity,
    required this.totalPrice,
  });
}
