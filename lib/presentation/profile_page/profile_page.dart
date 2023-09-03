import '../profile_page/widgets/chipviewskills_one_item_widget.dart';
import '../profile_page/widgets/profile_item_widget.dart';
import 'bloc/profile_bloc.dart';
import 'models/chipviewskills_one_item_model.dart';
import 'models/profile_item_model.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_radio_button.dart';

class ProfilePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(context,37),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context,24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context,left: 24),
                    onTap: () {
                      onTapArrowleft11(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr),
                actions: [
                  AppbarImage(
                      height: getSize(context,24),
                      width: getSize(context,24),
                      svgPath: ImageConstant.imgSettings,
                      margin: getMargin(context,left: 24, right: 24),
                      onTap: () {
                        onTapSettings2(context);
                      })
                ]),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(context,top: 43, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(context,225),
                                  width: getHorizontalSize(context,327),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBg120x327,
                                            height: getVerticalSize(context,120),
                                            width: getHorizontalSize(context,327),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(context,8)),
                                            alignment: Alignment.topCenter),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(context,
                                                    left: 88, right: 87),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .img63,
                                                          height: getSize(context,89),
                                                          width: getSize(context,89),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(context,
                                                                      44))),
                                                      Padding(
                                                          padding: getPadding(context,
                                                              top: 9),
                                                          child: Text(
                                                              "msg_gustavo_lipshut"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansBold18Gray90001
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(context,
                                                                              0.09)))),
                                                      Padding(
                                                          padding: getPadding(context,
                                                              top: 5),
                                                          child: BlocSelector<
                                                                  ProfileBloc,
                                                                  ProfileState,
                                                                  String?>(
                                                              selector: (state) =>
                                                                  state
                                                                      .radioGroup,
                                                              builder: (context,
                                                                  radioGroup) {
                                                                return CustomRadioButton(
                                                                    text:
                                                                        "lbl_open_to_work"
                                                                            .tr,
                                                                    value: "lbl_open_to_work"
                                                                            .tr,
                                                                    groupValue:
                                                                        radioGroup,
                                                                    margin:
                                                                        getMargin(context,
                                                                            top:
                                                                                5),
                                                                    fontStyle:
                                                                        RadioFontStyle
                                                                            .PoppinsMedium14,
                                                                    onChange:
                                                                        (value) {
                                                                      context
                                                                          .read<
                                                                              ProfileBloc>()
                                                                          .add(ChangeRadioButtonEvent(
                                                                              value: value));
                                                                    });
                                                              }))
                                                    ])))
                                      ])),
                              Container(
                                  width: getHorizontalSize(context,272),
                                  margin:
                                      getMargin(context,left: 52, top: 15, right: 50),
                                  child: Text("msg_ui_ux_designer".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterRegular14
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context,0.07)))),
                              Padding(
                                  padding:
                                      getPadding(context,left: 24, top: 17, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(context,154),
                                            padding: getPadding(context,
                                                left: 40,
                                                top: 12,
                                                right: 40,
                                                bottom: 12),
                                            decoration: AppDecoration
                                                .fillGray20001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder24(context)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(context,top: 2),
                                                      child: Text("lbl_25".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.08)))),
                                                  Padding(
                                                      padding: getPadding(context,
                                                          left: 8,
                                                          top: 5,
                                                          bottom: 1),
                                                      child: Text(
                                                          "lbl_applied".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansMedium12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.06))))
                                                ])),
                                        Container(
                                            width: getHorizontalSize(context,154),
                                            margin: getMargin(context,left: 19),
                                            padding: getPadding(context,
                                                left: 35,
                                                top: 12,
                                                right: 35,
                                                bottom: 12),
                                            decoration: AppDecoration
                                                .fillGray20001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder24(context)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(context,top: 2),
                                                      child: Text("lbl_10".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.08)))),
                                                  Padding(
                                                      padding: getPadding(context,
                                                          left: 8,
                                                          top: 4,
                                                          bottom: 3),
                                                      child: Text(
                                                          "lbl_reviewed".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansMedium12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.06))))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(context,top: 24),
                                  child: Divider(
                                      height: getVerticalSize(context,2),
                                      thickness: getVerticalSize(context,2),
                                      color: ColorConstant.indigo50)),
                              Container(
                                  margin:
                                      getMargin(context,left: 24, top: 22, right: 24),
                                  padding: getPadding(context,
                                      left: 16, top: 14, right: 16, bottom: 14),
                                  decoration: AppDecoration.outlineIndigo50(context)
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12(context)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(context,top: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(context,
                                                          top: 2, bottom: 1),
                                                      child: Text(
                                                          "lbl_about_me".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.08)))),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgEdit,
                                                      height: getSize(context,24),
                                                      width: getSize(context,24))
                                                ])),
                                        Container(
                                            width: getHorizontalSize(context,272),
                                            margin:
                                                getMargin(context,top: 14, right: 22),
                                            child: Text(
                                                "msg_lorem_ipsum_dol9".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14Bluegray400
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(context,
                                                                0.07))))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(context,left: 25, top: 24, right: 23),
                                  padding: getPadding(context,
                                      left: 9, top: 16, right: 9, bottom: 16),
                                  decoration: AppDecoration.outlineIndigo50(context)
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12(context)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(context,left: 7, right: 7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(context,
                                                          top: 1, bottom: 2),
                                                      child: Text(
                                                          "lbl_skills".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.08)))),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgEdit,
                                                      height: getSize(context,24),
                                                      width: getSize(context,24))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(context,top: 12, bottom: 17),
                                            child: BlocSelector<
                                                    ProfileBloc,
                                                    ProfileState,
                                                    ProfileModel?>(
                                                selector: (state) =>
                                                    state.profileModelObj,
                                                builder:
                                                    (context, profileModelObj) {
                                                  return Wrap(
                                                      runSpacing:
                                                          getVerticalSize(context,5),
                                                      spacing:
                                                          getHorizontalSize(context,5),
                                                      children: List<
                                                              Widget>.generate(
                                                          profileModelObj
                                                                  ?.chipviewskillsOneItemList
                                                                  .length ??
                                                              0, (index) {
                                                        ChipviewskillsOneItemModel
                                                            model =
                                                            profileModelObj
                                                                        ?.chipviewskillsOneItemList[
                                                                    index] ??
                                                                ChipviewskillsOneItemModel();
                                                        return ChipviewskillsOneItemWidget(
                                                            model,
                                                            onSelectedChipView:
                                                                (value) {
                                                          context
                                                              .read<
                                                                  ProfileBloc>()
                                                              .add(UpdateChipViewEvent(
                                                                  index: index,
                                                                  isSelected:
                                                                      value));
                                                        });
                                                      }));
                                                }))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(context,left: 24, top: 24, right: 24),
                                  padding: getPadding(context,
                                      left: 16, top: 15, right: 16, bottom: 15),
                                  decoration: AppDecoration.outlineIndigo50(context)
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12(context)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(context,top: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(context,top: 2),
                                                      child: Text(
                                                          "lbl_experience".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansBold18
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.09)))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgShare,
                                                      height: getSize(context,24),
                                                      width: getSize(context,24),
                                                      margin:
                                                          getMargin(context,bottom: 1))
                                                ])),
                                        Padding(
                                            padding: getPadding(context,top: 22),
                                            child: BlocSelector<
                                                    ProfileBloc,
                                                    ProfileState,
                                                    ProfileModel?>(
                                                selector: (state) =>
                                                    state.profileModelObj,
                                                builder:
                                                    (context, profileModelObj) {
                                                  return ListView.separated(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return Padding(
                                                            padding: getPadding(context,
                                                                top: 11.5,
                                                                bottom: 11.5),
                                                            child: SizedBox(
                                                                width:
                                                                    getHorizontalSize(context,
                                                                        235),
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
                                                      itemCount: profileModelObj
                                                              ?.profileItemList
                                                              .length ??
                                                          0,
                                                      itemBuilder:
                                                          (context, index) {
                                                        ProfileItemModel model =
                                                            profileModelObj
                                                                        ?.profileItemList[
                                                                    index] ??
                                                                ProfileItemModel();
                                                        return ProfileItemWidget(
                                                            model);
                                                      });
                                                }))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(context,left: 24, top: 24, right: 24),
                                  padding: getPadding(context,all: 16),
                                  decoration: AppDecoration.outlineBluegray50(context)
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12(context)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(context,top: 2),
                                                  child: Text(
                                                      "lbl_education".tr,
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
                                                  svgPath:
                                                      ImageConstant.imgShare,
                                                  height: getSize(context,24),
                                                  width: getSize(context,24))
                                            ]),
                                        Padding(
                                            padding:
                                                getPadding(context,top: 24, right: 83),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrophy,
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
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPlusJakartaSansSemiBold14Gray900
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(context,0.07))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(context,
                                                                        top: 6),
                                                                child: Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(context,
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "msg_computer_scienc".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPlusJakartaSansMedium12.copyWith(letterSpacing: getHorizontalSize(context,0.06)))),
                                                                      Padding(
                                                                          padding: getPadding(context,
                                                                              left:
                                                                                  4,
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPlusJakartaSansMedium12.copyWith(letterSpacing: getHorizontalSize(context,0.06)))),
                                                                      Padding(
                                                                          padding: getPadding(context,
                                                                              left:
                                                                                  4,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_2019".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPlusJakartaSansMedium12.copyWith(letterSpacing: getHorizontalSize(context,0.06))))
                                                                    ]))
                                                          ])))
                                            ]))
                                      ]))
                            ]))))));
  }

  onTapArrowleft11(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapSettings2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }
}
