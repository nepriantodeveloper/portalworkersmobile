import '../models/listlocation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/custom_button.dart';
import 'package:stockworkers/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListlocationItemWidget extends StatelessWidget {
  ListlocationItemWidget(this.listlocationItemModelObj);

  ListlocationItemModel listlocationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 48,
          width: 48,
          margin: getMargin(context,
            bottom: 42,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgLocation,
          ),
        ),
        Padding(
          padding: getPadding(context,
            left: 12,
            top: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "msg_senior_ui_ux_de".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPlusJakartaSansBold14.copyWith(
                  letterSpacing: getHorizontalSize(context,
                    0.07,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(context,
                  top: 6,
                ),
                child: Text(
                  listlocationItemModelObj.smalllabelregulTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style:
                      AppStyle.txtPlusJakartaSansSemiBold12Bluegray300.copyWith(
                    letterSpacing: getHorizontalSize(context,
                      0.06,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(context,
                  28,
                ),
                width: getHorizontalSize(context,
                  78,
                ),
                text: "lbl_opened".tr,
                margin: getMargin(context,
                  top: 17,
                ),
                variant: ButtonVariant.FillGreen50,
                shape: ButtonShape.RoundedBorder4,
                fontStyle: ButtonFontStyle.InterRegular12GreenA700_1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
