import 'package:check_out/core/utils/api_service.dart';
import 'package:check_out/core/utils/api_tokens.dart';
import 'package:check_out/features/checkout/data/models/empermeral_key_model/empermeral_key_model.dart';
import 'package:check_out/features/checkout/data/models/init_payment_sheet_input_model.dart';
import 'package:check_out/features/checkout/data/models/payment_intent/payment_intent.dart';
import 'package:check_out/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  ApiServices apiServices = ApiServices();

  Future<PaymentIntentModel> createPaymentIntent(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    Response response = await apiServices.post(
        body: paymentIntentInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiTolkens.secretApiKey,
        contentType: Headers.formUrlEncodedContentType);

    PaymentIntentModel paymentIntentModel =
        PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future<EmpermeralKeyModel> createEphermealKey(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    Response response = await apiServices.post(
        body: {'customer': paymentIntentInputModel.customer},
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        token: ApiTolkens.secretApiKey,
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'Stripe-Version': '2024-12-18.acacia',
          'Authorization': 'Bearer ${ApiTolkens.secretApiKey}'
        });

    EmpermeralKeyModel empermeralKeyModel =
        EmpermeralKeyModel.fromJson(response.data);
    return empermeralKeyModel;
  }

  Future initPaymentSheet(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            merchantDisplayName: 'Flutter Stripe',
            customerEphemeralKeySecret:
                initPaymentSheetInputModel.customerEphemeralKeySecret,
            customerId: initPaymentSheetInputModel.customerId,
            paymentIntentClientSecret:
                initPaymentSheetInputModel.paymentIntentClientSecret));
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    PaymentIntentModel paymentIntentModel = await createPaymentIntent(
        paymentIntentInputModel: paymentIntentInputModel);
    EmpermeralKeyModel empermeralKeyModel = await createEphermealKey(
        paymentIntentInputModel: paymentIntentInputModel);
    var initPaymentSheetInputModel = InitPaymentSheetInputModel(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!,
        customerId: paymentIntentInputModel.customer,
        customerEphemeralKeySecret: empermeralKeyModel.secret!);
    await initPaymentSheet(
        initPaymentSheetInputModel: initPaymentSheetInputModel);

    await displayPaymentSheet();
  }
}
//   using this method for creating customer at stripe api when the user is  signed in  to retrieve a (customer id)
// that used for Create an Ephemeral Key for this customer  ( created at every paymrent opration , used for know the the card of the user Then used to create a PaymentMethod (  ) ) ,
// and used to create a PaymentIntent
// //   Future<CustomerModel> createCustomer({
// //     required name,
//   }) async {
//     Response response = await apiServices.post(
//         body: name.toJson(),
//         url: 'https://api.stripe.com/v1/customers',
//         token: ApiTolkens.secretApiKey,
//         contentType: Headers.formUrlEncodedContentType);

//     PaymentIntentModel paymentIntentModel =
//         PaymentIntentModel.fromJson(response.data);
//     return paymentIntentModel;
//   }
// }
