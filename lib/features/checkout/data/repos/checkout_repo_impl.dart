import 'dart:developer';

import 'package:check_out/core/errors/failures.dart';
import 'package:check_out/core/utils/stripe_service.dart';
import 'package:check_out/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:check_out/features/checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';

class CheckOutRepoImpl extends CheckoutRepo {
  StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return const Right(null);
    } catch (e) {
      log(e.toString());
      return Left(ServerFailure(
        errormessage: e.toString(),
      ));
    }
  }
}
