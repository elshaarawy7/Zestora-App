import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:zestora/core/utils/api_keys.dart';
import 'package:zestora/core/utils/api_servies.dart';
import 'package:zestora/futcher/data/model/ephomral_kay/ephomral_kay.dart';
import 'package:zestora/futcher/data/model/ephomral_kay/payment_intet_sheet_input_model.dart';
import 'package:zestora/futcher/data/model/payment_intet_input_model.dart';
import 'package:zestora/futcher/data/model/payment_intet_model/payment_intet_model.dart';

class StripServies {
  final ApiServies apiServies = ApiServies();

  // ✅ تعديل هنا: خلت الدالة تستقبل PaymentIntetInputModel مش PaymentIntetModel
  Future<PaymentIntetModel> createPaymentIntent(
    PaymentIntetInputModel paymentInputModel,
  ) async {
    var response = await apiServies.post(
      body: paymentInputModel.toJson(),
      contentTyep: Headers.formUrlEncodedContentType,

      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secret_key,
      headers: {'Stripe-Version': '2024-06-20'},
    );

    // ✅ هنا نرجع PaymentIntetModel اللي جاي من Stripe
    var paymentIntetModel = PaymentIntetModel.fromJson(response.data);
    return paymentIntetModel;
  }

  Future<EphomralKay> createEmpherKey({required String customer_id}) async {
    var responce = await apiServies.post(
      body: {'customer': customer_id},
      url: 'https://api.stripe.com/v1/ephemeral_keys',
      token: ApiKeys.secret_key,
      contentTyep: Headers.formUrlEncodedContentType,
      headers: {'Stripe-Version': '2024-06-20'},
    );

    var feamoralKeyModel = EphomralKay.fromJson(responce.data);
    return feamoralKeyModel;
  }

  Future initPaymentSheat({
    required InitiPaymentSheetInputModel initiPaymentSheetInputModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: initiPaymentSheetInputModel.clientSecret,
        customerEphemeralKeySecret:
            initiPaymentSheetInputModel.ephemeralKeySecret,
        merchantDisplayName: "Elshaarawy",
        customerId: initiPaymentSheetInputModel.customerId,
      ),
    );
  }

  Future disPlayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future mackupPayment({
    required PaymentIntetInputModel paymentInputModel,
  }) async {
    // الخطوة الأولى: إنشاء Payment Intent
    var paymentIntantModel = await createPaymentIntent(paymentInputModel);

    // الخطوة الثانية: إنشاء Ephemeral Key
    // ✅ تصحيح الخطأ الإملائي من cusomer_id إلى customerId
    var ephomralkeyModel = await createEmpherKey(
      customer_id: paymentInputModel.customer_id,
    );

    // تجميع البيانات لتهيئة الـ Payment Sheet
    var initiPaymentSheetInputModel = InitiPaymentSheetInputModel(
      clientSecret: paymentIntantModel.clientSecret!,
      customerId: paymentIntantModel.customer, // Stripe يرجع customer ID هنا
      ephemeralKeySecret: ephomralkeyModel.secret!,
    );

    // الخطوة الثالثة: تهيئة Payment Sheet
    await initPaymentSheat(
      initiPaymentSheetInputModel: initiPaymentSheetInputModel,
    );

    // الخطوة الرابعة: عرض Payment Sheet للمستخدم
    await disPlayPaymentSheet();
  }
}
