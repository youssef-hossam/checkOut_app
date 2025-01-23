import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodItem extends StatelessWidget {
  final String image;
  final bool isSelected;
  const PaymentMethodItem({
    super.key,
    required this.image,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: 62.h,
          width: 103.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurStyle: BlurStyle.outer,
                  color: isSelected ? Colors.green : Colors.transparent,
                  blurRadius: 10,
                  offset: const Offset(0.1, 0.1),
                  spreadRadius: 0.5)
            ],
            border: Border.all(
                color: isSelected ? Colors.green : Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(
              10.r,
            ),
          ),
          child: Image.asset(
            image,
            // height: 30.h,
            fit: BoxFit.scaleDown,
          )),
    );
  }
}
