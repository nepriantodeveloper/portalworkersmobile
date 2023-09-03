import '../models/listenglishuk_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stock_workers/core/app_export.dart';
import 'package:stock_workers/widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class ListenglishukItemWidget extends StatelessWidget {
  ListenglishukItemWidget(this.listenglishukItemModelObj,
      {this.changeCheckBox});

  ListenglishukItemModel listenglishukItemModelObj;

  Function(bool)? changeCheckBox;

  @override
  Widget build(BuildContext context) {
    return CustomCheckbox(
      width: getHorizontalSize(
        295,
      ),
      text: "lbl_english_uk".tr,
      value: listenglishukItemModelObj.isCheckbox,
      fontStyle: CheckboxFontStyle.PlusJakartaSansSemiBold16,
      isRightCheck: true,
      onChange: (value) {
        changeCheckBox?.call(value);
      },
    );
  }
}
