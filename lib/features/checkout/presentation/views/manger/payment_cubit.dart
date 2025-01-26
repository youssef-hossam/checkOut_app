import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:check_out/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:check_out/features/checkout/data/repos/checkout_repo.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());

  final CheckoutRepo checkoutRepo;

  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());
    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((l) => emit(PaymentFailure(l.errormessage)),
        (r) => emit(PaymentSuccess()));
  }

  void onchange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
