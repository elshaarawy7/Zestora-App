import 'package:dartz/dartz.dart';
import 'package:zestora/futcher/data/model/payment_intet_input_model.dart';

abstract class CheckOytRepo {  

 Future<Either<Fuiler , void>> mackPayment({
  required PaymentIntetInputModel paymentIntetInputModel
 });
  
} 

abstract class Fuiler {
  final String errorMassge ;

  Fuiler({required this.errorMassge});

} 

class SelverFuiler extends Fuiler{
  SelverFuiler({required super.errorMassge});

}