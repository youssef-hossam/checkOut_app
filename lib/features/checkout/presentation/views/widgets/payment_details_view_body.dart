import 'dart:developer';

import 'package:check_out/features/checkout/presentation/views/thank_you_view.dart';
import 'package:check_out/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:check_out/features/checkout/presentation/views/widgets/payment_button.dart';
import 'package:check_out/features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  int activeIndex = 0;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  List<String> images = [
    'assets/images/payPal.png',
    'assets/images/visa.png',
    'assets/images/applePay.png'
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(children: [
          SizedBox(height: 20.h),
          SizedBox(
            height: 62.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  image: images[index],
                  isSelected: activeIndex == index ? true : false,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
        ]),
      ),
      SliverToBoxAdapter(
          child: CustomCreditCard(
        autovalidateMode: autovalidateMode,
        formKey: formKey,
      )),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
                child: PaymentButton(
                    title: 'Pay',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ThankYouView()));
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    }))),
      )
    ]);
  }
}
