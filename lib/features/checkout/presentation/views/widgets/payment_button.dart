import 'package:check_out/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const PaymentButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff34A853),
            minimumSize: Size(double.infinity, 70.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r))),
        onPressed: onPressed,
        child: Text(title, style: AppStyles.style22));
  }
}
