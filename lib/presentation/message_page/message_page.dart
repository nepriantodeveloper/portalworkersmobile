import '../message_page/widgets/message_item_widget.dart';
import 'bloc/message_bloc.dart';
import 'models/message_item_model.dart';
import 'models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_button.dart';

class MessagePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MessageBloc>(
        create: (context) =>
            MessageBloc(MessageState(messageModelObj: MessageModel()))
              ..add(MessageInitialEvent()),
        child: MessagePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(context,51),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context,24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context,left: 24, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_message".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context,left: 24, top: 20, right: 24, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(context,top: 4),
                          padding: getPadding(context,
                              left: 16, top: 10, right: 16, bottom: 10),
                          decoration: AppDecoration.outlineIndigo50(context).copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24(context)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSearch,
                                    height: getSize(context,18),
                                    width: getSize(context,18),
                                    margin: getMargin(context,top: 4, bottom: 4)),
                                Padding(
                                    padding: getPadding(context,left: 8, top: 1),
                                    child: Text("msg_search_message".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansMedium16
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context,0.08)))),
                                Spacer(),
                                SizedBox(
                                    height: getVerticalSize(context,26),
                                    child: VerticalDivider(
                                        width: getHorizontalSize(context,1),
                                        thickness: getVerticalSize(context,1),
                                        color: ColorConstant.indigo50,
                                        indent: getHorizontalSize(context,4),
                                        endIndent: getHorizontalSize(context,4))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettingsGray900,
                                    height: getSize(context,18),
                                    width: getSize(context,18),
                                    margin:
                                        getMargin(context,left: 7, top: 4, bottom: 4))
                              ])),
                      Padding(
                          padding: getPadding(context,top: 24),
                          child: BlocSelector<MessageBloc, MessageState,
                                  MessageModel?>(
                              selector: (state) => state.messageModelObj,
                              builder: (context, messageModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding:
                                              getPadding(context,top: 7.5, bottom: 7.5),
                                          child: SizedBox(
                                              width: getHorizontalSize(context,327),
                                              child: Divider(
                                                  height: getVerticalSize(context,1),
                                                  thickness: getVerticalSize(context,1),
                                                  color:
                                                      ColorConstant.indigo50)));
                                    },
                                    itemCount: messageModelObj
                                            ?.messageItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      MessageItemModel model = messageModelObj
                                              ?.messageItemList[index] ??
                                          MessageItemModel();
                                      return MessageItemWidget(model,
                                          onTapRowdot: () {
                                        onTapRowdot(context);
                                      });
                                    });
                              })),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(context,46),
                          width: getHorizontalSize(context,137),
                          text: "lbl_new_chat".tr,
                          shape: ButtonShape.RoundedBorder20,
                          padding: ButtonPadding.PaddingT14,
                          fontStyle:
                              ButtonFontStyle.PlusJakartaSansSemiBold14Gray50,
                          prefixWidget: Container(
                              margin: getMargin(context,right: 4),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgPlus18x18)))
                    ]))));
  }

  onTapRowdot(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.chatScreen);
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}
