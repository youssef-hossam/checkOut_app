import 'package:check_out/features/checkout/presentation/views/widgets/dashed_line.dart';
import 'package:check_out/features/checkout/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      const ThankYouCard(),
      Positioned(
        height: MediaQuery.of(context).size.height * 1.2,
        left: -20.w,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
      ),
      const DashedLine(),
      Positioned(
        height: MediaQuery.of(context).size.height * 1.2,
        right: -20.w,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
      ),
      Positioned(
        top: -50.h,
        left: MediaQuery.sizeOf(context).width * 0.5 - 70.w,
        child: Stack(children: [
          Container(
            width: 110.w,
            height: 110.h,
            decoration: const BoxDecoration(
              color: Color(0xffD9D9D9),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            right: 10.w,
            top: 10.h,
            child: Container(
                width: 90.w,
                height: 90.h,
                decoration: const BoxDecoration(
                  color: Color(0xff34A853),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                  size: 80.sp,
                )),
          ),
        ]),
      ),
    ]);
  }
}
