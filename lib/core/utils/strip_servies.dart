import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:zestora/core/utils/api_keys.dart';
import 'package:zestora/core/utils/api_servies.dart';
import 'package:zestora/futcher/data/model/payment_intet_input_model.dart';
import 'package:zestora/futcher/data/model/payment_intet_model/payment_intet_model.dart';

class StripServies {
  final String secret_key = '';
  final ApiServies apiServies = ApiServies();
  Future<PaymentIntetModel> createPaymentIntet(
    PaymentIntetInputModel paymentIntetInputModel,
  ) async {
    var response = await apiServies.post(
      body: paymentIntetInputModel.toJson(),
      contentTyep: Headers.formUrlEncodedContentType,
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secret_key,
    );
    var paymentIntentModel = PaymentIntetModel.fromJson(response.data);

    return paymentIntentModel;
  }

  Future initPaymentSheat({required String PaymentClientSycreat}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: PaymentClientSycreat,
        merchantDisplayName: "Elshaarawy",
      ),
    );
  }

  Future disPlayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future mackpayment({
    required PaymentIntetInputModel paymentIntetInputModel,
  }) async {
    var paymentIntetModel = await createPaymentIntet(paymentIntetInputModel);
    await initPaymentSheat(
      PaymentClientSycreat: paymentIntetModel.clientSecret!,
    );
    await disPlayPaymentSheet();
  }
}
