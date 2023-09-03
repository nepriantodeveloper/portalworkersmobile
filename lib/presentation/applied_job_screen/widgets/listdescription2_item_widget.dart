import '../models/listdescription2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';

// ignore: must_be_immutable
class Listdescription2ItemWidget extends StatelessWidget {
  Listdescription2ItemWidget(this.listdescription2ItemModelObj);

  Listdescription2ItemModel listdescription2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(context,
          101,
        ),
        margin: getMargin(context,
          right: 12,
        ),
        padding: getPadding(context,
          left: 16,
          top: 12,
          right: 16,
          bottom: 12,
        ),
        decoration: AppDecoration.txtFillGray100.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder22,
        ),
        child: Text(
          listdescription2ItemModelObj.descriptionTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPlusJakartaSansSemiBold12Gray900.copyWith(
            letterSpacing: getHorizontalSize(context,
              0.06,
            ),
          ),
        ),
      ),
    );
  }
}
