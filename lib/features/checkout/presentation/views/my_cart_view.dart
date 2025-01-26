import 'package:check_out/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:check_out/features/checkout/presentation/views/manger/payment_cubit.dart';
import 'package:check_out/features/checkout/presentation/views/widgets/cart_info_item.dart';
import 'package:check_out/features/checkout/presentation/views/widgets/custom_app_bar.dart';
import 'package:check_out/features/checkout/presentation/views/widgets/payment_button.dart';
import 'package:check_out/features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBuilder(title: 'My Cart'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(children: [
          SizedBox(height: 15.h),
          Expanded(child: Image.asset('assets/images/basket.png')),
          SizedBox(height: 15.h),
          const OrderInfoItem(title: 'Order Subtotal', value: '42.20'),
          const OrderInfoItem(title: 'Discount', value: '0'),
          const OrderInfoItem(title: 'Shipping', value: '8'),
          SizedBox(height: 15.h),
          Divider(
            indent: 20.w,
            thickness: 2,
            color: const Color(0xffC7C7C7),
          ),
          SizedBox(
            height: 15.h,
          ),
          const TotalPrice(),
          SizedBox(
            height: 16.h,
          ),
          PaymentButton(
            title: 'Complete Payment',
            onPressed: () => BlocProvider.of<PaymentCubit>(context).makePayment(
                paymentIntentInputModel: PaymentIntentInputModel(
                    amount: '100',
                    currency: 'USD',
                    customer: 'cus_ReunSfJPNsLpVu')),
          ),
          SizedBox(
            height: 20.h,
          )
        ]),
      ),
    );
  }
}
