class PaymentIntetInputModel {
  final String amount;
  final String currency;
  final String customer_id;

  const PaymentIntetInputModel({
    required this.amount,
    required this.currency,
    required this.customer_id,
  });

  Map<String, dynamic> toJson() {
    return {
      'amount': amount + '00',
      'currency': currency,
      'customer': customer_id,
    };
  }
}
