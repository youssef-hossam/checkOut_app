import 'package:check_out/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  final String title;
  final String value;

  const OrderInfoItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.style18,
        ),
        const Spacer(),
        Text(
          '\$$value',
          style: AppStyles.style18,
        ),
      ],
    );
  }
}
