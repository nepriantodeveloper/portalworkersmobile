import 'bloc/chat_bloc.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_button.dart';
import 'package:stockworkers/widgets/custom_text_form_field.dart';

class ChatScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBloc>(
        create: (context) => ChatBloc(ChatState(chatModelObj: ChatModel()))
          ..add(ChatInitialEvent()),
        child: ChatScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(context,51),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context,24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context,left: 24, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_chance_septimus".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context,left: 24, top: 28, right: 24, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(context,right: 80),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(context,32),
                                    width: getSize(context,32),
                                    margin: getMargin(context,bottom: 36),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAvatar32x32,
                                              height: getSize(context,32),
                                              width: getSize(context,32),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(context,16)),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height: getSize(context,8),
                                                  width: getSize(context,8),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .tealA700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(context,
                                                                  4)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          width:
                                                              getHorizontalSize(context,
                                                                  1)))))
                                        ])),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(context,left: 12),
                                        padding: getPadding(context,
                                            left: 12,
                                            top: 10,
                                            right: 12,
                                            bottom: 10),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL241),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(context,164),
                                                  margin: getMargin(context,
                                                      top: 4, right: 14),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dol2".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPlusJakartaSansMedium14Gray600
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(context,
                                                                      0.07))))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(context,left: 44, top: 6),
                          child: Text("lbl_15_42_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium10
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context,0.05)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(context,left: 97, top: 26),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(context,46),
                                            text: "msg_lorem_ipsum_dol3".tr,
                                            shape: ButtonShape.CustomBorderTL24,
                                            padding: ButtonPadding.PaddingAll16,
                                            fontStyle: ButtonFontStyle
                                                .PlusJakartaSansMedium14Gray50)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgAvatar2,
                                        height: getSize(context,32),
                                        width: getSize(context,32),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(context,16)),
                                        margin: getMargin(context,
                                            left: 12, top: 7, bottom: 7))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(context,top: 6, right: 44),
                              child: Text("lbl_15_42_pm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansMedium10
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(context,0.05))))),
                      Padding(
                          padding: getPadding(context,top: 26, right: 80),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(context,32),
                                    width: getSize(context,32),
                                    margin: getMargin(context,bottom: 36),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAvatar32x32,
                                              height: getSize(context,32),
                                              width: getSize(context,32),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(context,16)),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height: getSize(context,8),
                                                  width: getSize(context,8),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .tealA700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(context,
                                                                  4)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          width:
                                                              getHorizontalSize(context,
                                                                  1)))))
                                        ])),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(context,left: 12),
                                        padding: getPadding(context,
                                            left: 12,
                                            top: 10,
                                            right: 12,
                                            bottom: 10),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL241),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(context,164),
                                                  margin: getMargin(context,
                                                      top: 4, right: 14),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dol2".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPlusJakartaSansMedium14Gray600
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(context,
                                                                      0.07))))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(context,left: 44, top: 6, bottom: 5),
                          child: Text("lbl_15_42_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium10
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context,0.05))))
                    ])),
            bottomNavigationBar:
                BlocSelector<ChatBloc, ChatState, TextEditingController?>(
                    selector: (state) => state.messageTwoController,
                    builder: (context, messageTwoController) {
                      return CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: messageTwoController,
                          hintText: "msg_type_your_messa".tr,
                          margin: getMargin(context,left: 24, right: 24, bottom: 40),
                          variant: TextFormFieldVariant.FillGray200,
                          shape: TextFormFieldShape.CircleBorder28,
                          padding: TextFormFieldPadding.PaddingAll20,
                          fontStyle: TextFormFieldFontStyle
                              .PlusJakartaSansMedium12Gray6007c,
                          textInputAction: TextInputAction.done);
                    })));
  }

  onTapArrowleft4(BuildContext context) {
    NavigatorService.goBack();
  }
}
