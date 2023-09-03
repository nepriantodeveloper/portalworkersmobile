import '../models/listclock2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stock_workers/core/app_export.dart';
import 'package:stock_workers/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listclock2ItemWidget extends StatelessWidget {
  Listclock2ItemWidget(this.listclock2ItemModelObj);

  Listclock2ItemModel listclock2ItemModelObj;

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
                listclock2ItemModelObj.salaryTxt,
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
                listclock2ItemModelObj.priceTxt,
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
