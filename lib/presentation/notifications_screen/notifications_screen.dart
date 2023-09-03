import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'bloc/notifications_bloc.dart';
import 'models/notifications_item_model.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
        create: (context) => NotificationsBloc(
            NotificationsState(notificationsModelObj: NotificationsModel()))
          ..add(NotificationsInitialEvent()),
        child: NotificationsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(context,50),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context,24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context,left: 24, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft19(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_notifications".tr)),
            body: Container(
                width: getHorizontalSize(context,327),
                margin: getMargin(context,left: 24, top: 30, right: 24, bottom: 5),
                padding: getPadding(context,left: 16, top: 15, right: 16, bottom: 15),
                decoration: AppDecoration.outlineIndigo50
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(context,top: 1),
                          child: Text("msg_messages_notifi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12)),
                      Padding(
                          padding: getPadding(context,top: 17),
                          child: BlocSelector<NotificationsBloc,
                                  NotificationsState, NotificationsModel?>(
                              selector: (state) => state.notificationsModelObj,
                              builder: (context, notificationsModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding: getPadding(context,
                                              top: 10.5, bottom: 10.5),
                                          child: SizedBox(
                                              width: getHorizontalSize(context,295),
                                              child: Divider(
                                                  height: getVerticalSize(context,1),
                                                  thickness: getVerticalSize(context,1),
                                                  color:
                                                      ColorConstant.indigo50)));
                                    },
                                    itemCount: notificationsModelObj
                                            ?.notificationsItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      NotificationsItemModel model =
                                          notificationsModelObj
                                                      ?.notificationsItemList[
                                                  index] ??
                                              NotificationsItemModel();
                                      return NotificationsItemWidget(model,
                                          changeSwitch: (value) {
                                        context.read<NotificationsBloc>().add(
                                            NotificationsItemEvent(
                                                index: index,
                                                isSelectedSwitch: value));
                                      });
                                    });
                              }))
                    ]))));
  }

  onTapArrowleft19(BuildContext context) {
    NavigatorService.goBack();
  }
}
