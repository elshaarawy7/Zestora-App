import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:zestora/futcher/data/model/payment_intet_input_model.dart';
import 'package:zestora/futcher/logic/repos/cheakout_repo_impl.dart';
import 'package:zestora/futcher/logic/repos/check_oyt_repo.dart';

part 'payemnt_state.dart';

class PayemntCubit extends Cubit<PayemntState> {
  PayemntCubit(this.cheakoutRepoImpl) : super(PayemntInitial()); 

  final CheakoutRepoImpl cheakoutRepoImpl  ;

  Future mackPayment({required PaymentIntetInputModel paymentIntetInputModel }) async {
    emit(PayemntLoding()) ; 
    var data = await cheakoutRepoImpl.mackPayment(paymentIntetInputModel: paymentIntetInputModel) ; 
    data.fold(
      (l)=> emit(PayemntFuiler(errorMassege: l.errorMassge)) ,
      (r)=> emit(PayemntSucsess())) ;
  } 

  @override
  void onchange(Change<PayemntState> change) {
    super.onChange(change);
  }
} 


