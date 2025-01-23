import 'package:check_out/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.81,
      decoration: const BoxDecoration(
        color: Color(0xffD9D9D9),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Text(
            'Thank You!',
            style: AppStyles.style25,
          ),
          Text(
            "Your transaction was successful",
            style: AppStyles.style20,
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    'Date',
                    style: AppStyles.style18,
                  ),
                  const Spacer(),
                  Text(
                    '01/24/2023',
                    style:
                        AppStyles.style18.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    'Time',
                    style: AppStyles.style18,
                  ),
                  const Spacer(),
                  Text(
                    '10:15 AM',
                    style:
                        AppStyles.style18.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    'To',
                    style: AppStyles.style18,
                  ),
                  const Spacer(),
                  Text(
                    'Sam Louis',
                    style:
                        AppStyles.style18.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ]),
          ),
          SizedBox(
            height: 30.h,
          ),
          Divider(
            indent: 15.w,
            endIndent: 15.w,
            thickness: 3,
            color: const Color(0xffC7C7C7),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Row(children: [
              Text(
                'Total',
                style: AppStyles.style24,
              ),
              const Spacer(),
              Text(
                '\$50.97',
                style: AppStyles.style24,
              ),
            ]),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Container(
                width: double.infinity,
                height: 70.h,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Image.asset('assets/images/logo.jpg'),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Credit Card",
                          style: AppStyles.style18,
                        ),
                        Text(
                          "Mastercard **78",
                          style:
                              AppStyles.style18.copyWith(color: Colors.black54),
                        )
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
