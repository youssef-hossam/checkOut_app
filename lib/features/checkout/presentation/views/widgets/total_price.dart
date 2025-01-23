import 'package:check_out/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Total',
          style: AppStyles.style24,
        ),
        const Spacer(),
        Text('\$50.20', style: AppStyles.style24)
      ],
    );
  }
}
