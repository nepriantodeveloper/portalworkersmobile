import '../models/listclock1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listclock1ItemWidget extends StatelessWidget {
  Listclock1ItemWidget(this.listclock1ItemModelObj);

  Listclock1ItemModel listclock1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(context,
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
              padding: getPadding(context,
                top: 9,
              ),
              child: Text(
                listclock1ItemModelObj.salaryTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPlusJakartaSansMedium12Bluegray300.copyWith(
                  letterSpacing: getHorizontalSize(context,
                    0.06,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(context,
                top: 9,
              ),
              child: Text(
                listclock1ItemModelObj.priceTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPlusJakartaSansSemiBold14Gray900.copyWith(
                  letterSpacing: getHorizontalSize(context,
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
