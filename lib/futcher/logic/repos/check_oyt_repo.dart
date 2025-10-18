import 'package:dartz/dartz.dart';
import 'package:zestora/core/error/fuiler_eror.dart';
import 'package:zestora/futcher/data/model/payment_intet_input_model.dart';

abstract class CheckOytRepo {
  Future<Either<Fuiler, void>> mackPayment({
    required PaymentIntetInputModel paymentIntetInputModel,
  });
}
 