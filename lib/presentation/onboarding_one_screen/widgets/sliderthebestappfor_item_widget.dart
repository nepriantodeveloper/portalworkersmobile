import '../models/sliderthebestappfor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';

// ignore: must_be_immutable
class SliderthebestappforItemWidget extends StatelessWidget {
  SliderthebestappforItemWidget(this.sliderthebestappforItemModelObj,
      {this.onTapBtnNextvalue});

  SliderthebestappforItemModel sliderthebestappforItemModelObj;

  VoidCallback? onTapBtnNextvalue;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(context,
          left: 39,
          top: 32,
          right: 39,
          bottom: 32,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: getHorizontalSize(context,
                246,
              ),
              margin: getMargin(context,
                top: 1,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_the_best_app_fo2".tr,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(context,
                          24,
                        ),
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: getHorizontalSize(context,
                          0.12,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "msg_find_your_dream2".tr,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(context,
                          24,
                        ),
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: getHorizontalSize(context,
                          0.12,
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: getHorizontalSize(context,
                243,
              ),
              margin: getMargin(context,
                top: 19,
              ),
              child: Text(
                "msg_semper_in_cursu".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style:
                    AppStyle.txtPlusJakartaSansSemiBold14Bluegray300.copyWith(
                  letterSpacing: getHorizontalSize(context,
                    0.07,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onTapBtnNextvalue?.call();
              },
              child: Container(
                margin: getMargin(context,
                  top: 69,
                ),
                padding: getPadding(context,
                  left: 30,
                  top: 17,
                  right: 32,
                  bottom: 17,
                ),
                width: getHorizontalSize(context,
                  101,
                ),
                decoration: AppDecoration.btnFillGray900.copyWith(
                  borderRadius: BorderRadiusStyle.btnRoundedBorder24,
                ),
                child: Text(
                  "lbl_next".tr,
                  textAlign: TextAlign.center,
                  style: AppStyle.btnPlusJakartaSansSemiBold16Gray50.copyWith(
                    letterSpacing: getHorizontalSize(context,
                      0.08,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
