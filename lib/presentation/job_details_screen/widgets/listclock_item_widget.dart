import '../models/listclock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stock_workers/core/app_export.dart';
import 'package:stock_workers/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListclockItemWidget extends StatelessWidget {
  ListclockItemWidget(this.listclockItemModelObj);

  ListclockItemModel listclockItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 54,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 48,
              width: 48,
              variant: IconButtonVariant.FillTealA70065,
              shape: IconButtonShape.CircleBorder24,
              padding: IconButtonPadding.PaddingAll12,
              child: CustomImageView(
                svgPath: ImageConstant.imgClock,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Text(
                listclockItemModelObj.salaryTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPlusJakartaSansMedium12Bluegray300.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.06,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Text(
                listclockItemModelObj.priceTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPlusJakartaSansSemiBold14Gray900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.07,
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
