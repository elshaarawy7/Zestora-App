import 'package:json_annotation/json_annotation.dart';

part 'tip.g.dart';

@JsonSerializable()
class Tip {
  final String? id;
  final double? amount;
  final String? currency;

  Tip({this.id, this.amount, this.currency});

  factory Tip.fromJson(Map<String, dynamic> json) {
    return Tip(
      id: json['id'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'amount': amount, 'currency': currency};
  }
}
