import 'package:dartz/dartz.dart';
import 'package:zestora/core/error/fuiler_eror.dart';
import 'package:zestora/core/utils/strip_servies.dart';
import 'package:zestora/futcher/data/model/payment_intet_input_model.dart';
import 'package:zestora/futcher/logic/repos/check_oyt_repo.dart';

class CheakoutRepoImpl extends CheckOytRepo { 

  final StripServies stripServies = StripServies() ;
  @override
  Future<Either<Fuiler, void>> mackPayment({required PaymentIntetInputModel paymentIntetInputModel}) {
    // TODO: implement mackPayment
    throw UnimplementedError();
  }
} 