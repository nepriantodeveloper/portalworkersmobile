import 'package:stockworkers/localization/app_localization.dart';

import '../models/saved_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/custom_button.dart';
import 'package:stockworkers/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SavedItemWidget extends StatelessWidget {
  SavedItemWidget(this.savedItemModelObj, {this.onTapSaveJobDetails});

  SavedItemModel savedItemModelObj;

  VoidCallback? onTapSaveJobDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSaveJobDetails?.call();
      },
      child: Container(
        padding: getPadding(context,
          all: 16,
        ),
        decoration: AppDecoration.outlineIndigo50(context).copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16(context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 48,
              width: 48,
              margin: getMargin(context,
                bottom: 68,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgUser48x48,
              ),
            ),
            Padding(
              padding: getPadding(context,
                left: 10,
                top: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    savedItemModelObj.uxdesignerTxt,
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
                      top: 6,
                    ),
                    child: Text(
                      savedItemModelObj.dummystudioTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPlusJakartaSansSemiBold12Bluegray300
                          .copyWith(
                        letterSpacing: getHorizontalSize(context,
                          0.06,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(context,
                      top: 10,
                    ),
                    child: Text(
                      "msg_560_12_000".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtPlusJakartaSansMedium12Gray600.copyWith(
                        letterSpacing: getHorizontalSize(context,
                          0.06,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(context,
                      top: 13,
                    ),
                    child: Row(
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
                ],
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgBookmark1,
              height: getSize(context,
                24,
              ),
              width: getSize(context,
                24,
              ),
              margin: getMargin(context,
                left: 30,
                bottom: 92,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
