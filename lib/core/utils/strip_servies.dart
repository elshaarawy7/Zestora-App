import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:zestora/core/utils/api_keys.dart';
import 'package:zestora/core/utils/api_servies.dart';
import 'package:zestora/futcher/data/model/ephomral_kay/ephomral_kay.dart';
import 'package:zestora/futcher/data/model/payment_intet_input_model.dart';
import 'package:zestora/futcher/data/model/payment_intet_model/payment_intet_model.dart';

class StripServies {
  final String secret_key = '';
  final ApiServies apiServies = ApiServies();
  Future<PaymentIntetModel> createPaymentIntent(
    {required PaymentIntetModel paymentInputModel}
  ) async {
    var response = await apiServies.post(
      body:paymentInputModel.toJson() , 
      contentTyep: Headers.formUrlEncodedContentType,
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secret_key, 
       
       headers: {'Stripe-Version': '2024-06-20'},
    );
    var  paymentIntetModel = PaymentIntent.fromJson(response.data) ;

    return paymentInputModel ;
  } 


  Future<EphomralKay>createEmpherKey({required String customer_id}) async {
     
      var responce = await  apiServies.post(
        body: {'customer' : customer_id}, 
          url: 'https://api.stripe.com/v1/ephemeral_keys',
         token: ApiKeys.secret_key ,
          contentTyep: Headers.formUrlEncodedContentType, 
           headers: {'Stripe-Version': '2024-06-20'},
         ); 

         var feamoralKeyModel = EphomralKay.fromJson(responce.data) ; 
         return   feamoralKeyModel ;
  }

  Future initPaymentSheat({required String PaymentClientSycreat , required String ephemrral_secreate_id}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: PaymentClientSycreat,
        merchantDisplayName: "Elshaarawy", 
        customerEphemeralKeySecret: ephemrral_secreate_id , 
        customerId: ApiKeys.customer_id , 
      ),
    );
  }

  Future disPlayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future mackpayment({
    required PaymentIntetInputModel paymentIntetInputModel,
  }) async {
    var paymentIntetModel = await createEphomoralKay(paymentIntetInputModel);
  
    await initPaymentSheat(
      PaymentClientSycreat: paymentIntetModel.clientSecret!,
    );
    await disPlayPaymentSheet();
  } 


}
