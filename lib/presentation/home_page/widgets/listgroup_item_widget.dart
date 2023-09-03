import '../models/listgroup_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/custom_button.dart';
import 'package:stockworkers/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  ListgroupItemWidget(this.listgroupItemModelObj, {this.onTapColumngroup});

  ListgroupItemModel listgroupItemModelObj;

  VoidCallback? onTapColumngroup;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        child: GestureDetector(
          onTap: () {
            onTapColumngroup?.call();
          },
          child: Container(
            padding: getPadding(context,
              all: 16,
            ),
            decoration: AppDecoration.outlineIndigo50(context).copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16(context),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomIconButton(
                      height: 48,
                      width: 48,
                      margin: getMargin(context,
                        top: 1,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgGroup,
                      ),
                    ),
                    Padding(
                      padding: getPadding(context,
                        left: 12,
                        top: 4,
                        bottom: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            listgroupItemModelObj.digitalmarketinOneTxt,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPlusJakartaSansBold16.copyWith(
                              letterSpacing: getHorizontalSize(context,
                                0.08,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(context,
                              top: 5,
                            ),
                            child: Text(
                              "lbl_motorola".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansSemiBold12Bluegray300
                                  .copyWith(
                                letterSpacing: getHorizontalSize(context,
                                  0.06,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgBookmark,
                      height: getSize(context,
                        24,
                      ),
                      width: getSize(context,
                        24,
                      ),
                      margin: getMargin(context,
                        bottom: 25,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(context,
                    left: 60,
                    top: 9,
                  ),
                  child: Text(
                    "msg_560_12_000".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPlusJakartaSansMedium12Gray600.copyWith(
                      letterSpacing: getHorizontalSize(context,
                        0.06,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(context,
                      top: 13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          height: getVerticalSize(context,
                            28,
                          ),
                          width: getHorizontalSize(context,
                            70,
                          ),
                          text: "lbl_fulltime".tr,
                          variant: ButtonVariant.FillGray100,
                          shape: ButtonShape.RoundedBorder8,
                        ),
                        CustomButton(
                          height: getVerticalSize(context,
                            28,
                          ),
                          width: getHorizontalSize(context,
                            103,
                          ),
                          text: "lbl_two_days_ago".tr,
                          margin: getMargin(context,
                            left: 8,
                          ),
                          variant: ButtonVariant.FillGray100,
                          shape: ButtonShape.RoundedBorder8,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
