import 'package:check_out/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBarBuilder({required String title, void Function()? onTap}) {
  return AppBar(
    leading: Center(
      child: GestureDetector(
          onTap: onTap, child: SvgPicture.asset('assets/images/arrow.svg')),
    ),
    elevation: 0,
    title: Text(
      title,
      style: AppStyles.style25,
    ),
    centerTitle: true,
  );
}
