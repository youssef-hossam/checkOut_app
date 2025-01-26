import 'package:check_out/core/utils/styles.dart';
import 'package:check_out/features/checkout/presentation/views/manger/payment_cubit.dart';
import 'package:check_out/features/checkout/presentation/views/payment_details_view.dart';
import 'package:check_out/features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const ThankYouView()));
        }
        if (state is PaymentFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return state is PaymentLoading
            ? const Center(child: CircularProgressIndicator())
            : Text(title, style: AppStyles.style22);
      },
    );
  }
}
