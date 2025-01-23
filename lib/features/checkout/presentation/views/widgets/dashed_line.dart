import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: MediaQuery.of(context).size.height * 1.2,
      right: 20 + 10.w,
      left: 20 + 10.w,
      child: Row(
        children: List.generate(
            30,
            (index) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                        height: 2.h,
                        decoration: const BoxDecoration(
                          color: Color(0xffB8B8B8),
                        )),
                  ),
                )),
      ),
    );
  }
}
