import 'package:flutter/material.dart';
import 'package:stockworkers/core/utils/color_constant.dart';
import 'package:stockworkers/core/utils/size_utils.dart';
import 'package:stockworkers/theme/app_style.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({super.key, required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPlusJakartaSansBold18.copyWith(
            letterSpacing: getHorizontalSize(context,
              context,
              0.09,
            ),
            color: ColorConstant.gray900,
          ),
        ),
      ),
    );
  }
}
