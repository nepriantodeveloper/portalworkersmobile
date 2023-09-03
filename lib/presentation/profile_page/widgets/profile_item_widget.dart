import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(this.profileItemModelObj);

  ProfileItemModel profileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(context,
        64,
      ),
      width: getHorizontalSize(context,
        295,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFolder,
            height: getSize(context,
              32,
            ),
            width: getSize(context,
              32,
            ),
            alignment: Alignment.topLeft,
            margin: getMargin(context,
              left: 8,
              top: 8,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                CustomIconButton(
                  height: 48,
                  width: 48,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgUser48x48,
                  ),
                ),
                Padding(
                  padding: getPadding(context,
                    left: 12,
                    top: 5,
                    bottom: 1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        profileItemModelObj.internshipuiuxTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansSemiBold14Gray900
                            .copyWith(
                          letterSpacing: getHorizontalSize(context,
                            0.07,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(context,
                          top: 6,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: getPadding(context,
                                top: 1,
                              ),
                              child: Text(
                                "lbl_shopee_sg".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPlusJakartaSansMedium12
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(context,
                                    0.06,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(context,
                                left: 3,
                                top: 1,
                              ),
                              child: Text(
                                "lbl".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPlusJakartaSansMedium12
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(context,
                                    0.06,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(context,
                                left: 4,
                                bottom: 1,
                              ),
                              child: Text(
                                profileItemModelObj.zipcodeTxt,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPlusJakartaSansMedium12
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
