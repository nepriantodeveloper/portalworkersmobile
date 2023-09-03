import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stock_workers/core/app_export.dart';
import 'package:stock_workers/widgets/custom_switch.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(this.notificationsItemModelObj, {this.changeSwitch});

  NotificationsItemModel notificationsItemModelObj;

  Function(bool)? changeSwitch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          notificationsItemModelObj.newpostTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsRegular16.copyWith(
            letterSpacing: getHorizontalSize(
              0.12,
            ),
          ),
        ),
        CustomSwitch(
          value: notificationsItemModelObj.isSelectedSwitch,
          onChanged: (value) {
            changeSwitch?.call(value);
          },
        ),
      ],
    );
  }
}
