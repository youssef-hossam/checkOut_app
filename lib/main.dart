import 'package:check_out/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:check_out/features/checkout/presentation/views/manger/payment_cubit.dart';
import 'package:check_out/features/checkout/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey =
      'pk_test_51QkYPBK1rknJtmflQYTtYG6CO00zDoMd3oGcVyJjQXh8qTHarcy9TdUOh9ZhP9imVCuzfGI8ZysyzCbU7Ak75cCJ00XzvMLygT';

  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(390, 844),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => PaymentCubit(CheckOutRepoImpl()),
          child: MyCartView(),
        ),
      ),
    );
  }
}


//  1 - ( payment intent model)  create payment intent (currency , amount){} 