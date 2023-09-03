import '../experience_setting_screen/widgets/listuser2_item_widget.dart';
import 'bloc/experience_setting_bloc.dart';
import 'models/experience_setting_model.dart';
import 'models/listuser2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_button.dart';

class ExperienceSettingScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ExperienceSettingBloc>(
        create: (context) => ExperienceSettingBloc(ExperienceSettingState(
            experienceSettingModelObj: ExperienceSettingModel()))
          ..add(ExperienceSettingInitialEvent()),
        child: ExperienceSettingScreen());
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
                      onTapArrowleft14(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_experience".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context,left: 24, top: 28, right: 24, bottom: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(context,all: 16),
                              decoration: AppDecoration.outlineIndigo50
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(context,top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(context,top: 2),
                                                  child: Text(
                                                      "lbl_experience".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPlusJakartaSansBold18
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(context,
                                                                      0.09)))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgShare,
                                                  height: getSize(context,24),
                                                  width: getSize(context,24),
                                                  margin: getMargin(context,bottom: 1),
                                                  onTap: () {
                                                    onTapImgShare(context);
                                                  })
                                            ])),
                                    Padding(
                                        padding: getPadding(context,top: 15, right: 60),
                                        child: BlocSelector<
                                                ExperienceSettingBloc,
                                                ExperienceSettingState,
                                                ExperienceSettingModel?>(
                                            selector: (state) =>
                                                state.experienceSettingModelObj,
                                            builder: (context,
                                                experienceSettingModelObj) {
                                              return ListView.separated(
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                        padding: getPadding(context,
                                                            top: 19.5,
                                                            bottom: 19.5),
                                                        child: SizedBox(
                                                            width:
                                                                getHorizontalSize(context,
                                                                    295),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(context,
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(context,
                                                                        1),
                                                                color: ColorConstant
                                                                    .indigo50)));
                                                  },
                                                  itemCount:
                                                      experienceSettingModelObj
                                                              ?.listuser2ItemList
                                                              .length ??
                                                          0,
                                                  itemBuilder:
                                                      (context, index) {
                                                    Listuser2ItemModel model =
                                                        experienceSettingModelObj
                                                                    ?.listuser2ItemList[
                                                                index] ??
                                                            Listuser2ItemModel();
                                                    return Listuser2ItemWidget(
                                                        model);
                                                  });
                                            }))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(context,56),
                          text: "msg_add_new_positio".tr,
                          margin: getMargin(context,top: 37),
                          padding: ButtonPadding.PaddingAll17,
                          fontStyle:
                              ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                          onTap: () {
                            onTapAddnewposition(context);
                          }),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(context,top: 32, bottom: 3),
                              padding: getPadding(context,all: 16),
                              decoration: AppDecoration.outlineBluegray50
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(context,top: 2),
                                              child: Text("lbl_education".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPlusJakartaSansBold16
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(context,
                                                                  0.08)))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgShare,
                                              height: getSize(context,24),
                                              width: getSize(context,24))
                                        ]),
                                    Padding(
                                        padding: getPadding(context,top: 24, right: 83),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgTrophyGray100,
                                              height: getSize(context,48),
                                              width: getSize(context,48)),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(context,
                                                      left: 12,
                                                      top: 5,
                                                      bottom: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_university_of_o"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPlusJakartaSansSemiBold14Gray900
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(context,
                                                                            0.07))),
                                                        Padding(
                                                            padding: getPadding(context,
                                                                top: 6),
                                                            child: Row(
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(context,
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "msg_computer_scienc"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPlusJakartaSansMedium12
                                                                              .copyWith(letterSpacing: getHorizontalSize(context,0.06)))),
                                                                  Padding(
                                                                      padding: getPadding(context,
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPlusJakartaSansMedium12
                                                                              .copyWith(letterSpacing: getHorizontalSize(context,0.06)))),
                                                                  Padding(
                                                                      padding: getPadding(context,
                                                                          left:
                                                                              4,
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_2019"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPlusJakartaSansMedium12
                                                                              .copyWith(letterSpacing: getHorizontalSize(context,0.06))))
                                                                ]))
                                                      ])))
                                        ]))
                                  ])))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context,56),
                text: "msg_add_new_educati".tr,
                margin: getMargin(context,left: 24, right: 24, bottom: 55),
                padding: ButtonPadding.PaddingAll17,
                fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                onTap: () {
                  onTapAddneweducation(context);
                })));
  }

  onTapImgShare(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPositionScreen,
    );
  }

  onTapAddnewposition(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPositionScreen,
    );
  }

  onTapAddneweducation(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNewEducationScreen,
    );
  }

  onTapArrowleft14(BuildContext context) {
    NavigatorService.goBack();
  }
}
