import 'package:stockworkers/localization/app_localization.dart';

import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/presentation/home_page/home_page.dart';
import 'package:stockworkers/presentation/message_page/message_page.dart';
import 'package:stockworkers/presentation/profile_page/profile_page.dart';
import 'package:stockworkers/presentation/saved_page/saved_page.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_bottom_bar.dart';
import 'package:stockworkers/widgets/custom_checkbox.dart';
import 'package:stockworkers/presentation/logout_popup_dialog/logout_popup_dialog.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(context,38),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context,24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context,left: 24, bottom: 1),
                    onTap: () {
                      onTapArrowleft12(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_settings".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(context,left: 24, top: 41, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding: getPadding(context,top: 13, bottom: 13),
                                  decoration: AppDecoration.fillGray900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            height: getSize(context,64),
                                            width: getSize(context,64),
                                            margin:
                                                getMargin(context,top: 3, bottom: 2),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: getSize(context,64),
                                                          width: getSize(context,64),
                                                          child: CircularProgressIndicator(
                                                              value: 0.5,
                                                              strokeWidth:
                                                                  getHorizontalSize(context,
                                                                      4)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text("lbl_65".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansBold16Gray50
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.08))))
                                                ])),
                                        Padding(
                                            padding: getPadding(context,top: 6),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("msg_profile_complet".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(context,
                                                                      0.08))),
                                                  Container(
                                                      width: getHorizontalSize(context,
                                                          199),
                                                      margin: getMargin(context,top: 6),
                                                      child: Text(
                                                          "msg_quality_profile"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.5))))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(context,top: 32),
                                      child: Text("lbl_account".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansSemiBold12Bluegray400
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(context,
                                                          0.06))))),
                              GestureDetector(
                                  onTap: () {
                                    onTapAccount(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(context,top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgUser2,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,top: 3)),
                                            Padding(
                                                padding: getPadding(context,
                                                    left: 12, top: 5),
                                                child: Text(
                                                    "lbl_personal_info".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPlusJakartaSansSemiBold16Gray900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(context,
                                                                    0.08)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,bottom: 3))
                                          ]))),
                              Padding(
                                  padding: getPadding(context,top: 16),
                                  child: Divider(
                                      height: getVerticalSize(context,1),
                                      thickness: getVerticalSize(context,1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(context,36))),
                              GestureDetector(
                                  onTap: () {
                                    onTapPrivacy(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(context,top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgUser3,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,
                                                    top: 3, bottom: 1)),
                                            Padding(
                                                padding: getPadding(context,
                                                    left: 12, top: 7),
                                                child: Text("lbl_experience".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPlusJakartaSansSemiBold16Gray900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(context,
                                                                    0.08)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,bottom: 4))
                                          ]))),
                              Padding(
                                  padding: getPadding(context,top: 14),
                                  child: Divider(
                                      height: getVerticalSize(context,1),
                                      thickness: getVerticalSize(context,1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(context,36))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(context,top: 26),
                                      child: Text("lbl_general".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansSemiBold12Bluegray400
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(context,
                                                          0.06))))),
                              GestureDetector(
                                  onTap: () {
                                    onTapNotification(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(context,top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgNotification,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,top: 2)),
                                            Padding(
                                                padding: getPadding(context,
                                                    left: 12, top: 2),
                                                child: Text(
                                                    "lbl_notification".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium16
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(context,
                                                                    0.12)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,bottom: 2))
                                          ]))),
                              Padding(
                                  padding: getPadding(context,top: 16),
                                  child: Divider(
                                      height: getVerticalSize(context,1),
                                      thickness: getVerticalSize(context,1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(context,36))),
                              GestureDetector(
                                  onTap: () {
                                    onTapLanguage(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(context,top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgGlobe,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,
                                                    top: 2, bottom: 1)),
                                            Padding(
                                                padding: getPadding(context,
                                                    left: 12, top: 7),
                                                child: Text("lbl_language".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPlusJakartaSansSemiBold16Gray900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(context,
                                                                    0.08)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,bottom: 4))
                                          ]))),
                              Padding(
                                  padding: getPadding(context,top: 14),
                                  child: Divider(
                                      height: getVerticalSize(context,1),
                                      thickness: getVerticalSize(context,1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(context,36))),
                              Padding(
                                  padding: getPadding(context,top: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        BlocSelector<SettingsBloc,
                                                SettingsState, bool?>(
                                            selector: (state) =>
                                                state.isCheckbox,
                                            builder: (context, isCheckbox) {
                                              return CustomCheckbox(
                                                  text: "lbl_security".tr,
                                                  value: isCheckbox,
                                                  fontStyle: CheckboxFontStyle
                                                      .PlusJakartaSansSemiBold16,
                                                  onChange: (value) {
                                                    context
                                                        .read<SettingsBloc>()
                                                        .add(
                                                            ChangeCheckBoxEvent(
                                                                value: value));
                                                  });
                                            }),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(context,24),
                                            width: getSize(context,24),
                                            margin: getMargin(context,bottom: 1))
                                      ])),
                              Padding(
                                  padding: getPadding(context,top: 14),
                                  child: Divider(
                                      height: getVerticalSize(context,1),
                                      thickness: getVerticalSize(context,1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(context,36))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(context,top: 26),
                                      child: Text("lbl_about".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansSemiBold12Bluegray400
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(context,
                                                          0.06))))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowlocation(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(context,top: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgLocation24x24,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,bottom: 1)),
                                            Padding(
                                                padding: getPadding(context,
                                                    left: 12, top: 4),
                                                child: Text(
                                                    "msg_legal_and_polic".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPlusJakartaSansSemiBold16Gray900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(context,
                                                                    0.08)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context,bottom: 1))
                                          ]))),
                              Padding(
                                  padding: getPadding(context,top: 15),
                                  child: Divider(
                                      height: getVerticalSize(context,1),
                                      thickness: getVerticalSize(context,1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(context,36))),
                              Padding(
                                  padding: getPadding(context,top: 16),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgQuestion,
                                            height: getSize(context,24),
                                            width: getSize(context,24),
                                            margin: getMargin(context,bottom: 1)),
                                        Padding(
                                            padding:
                                                getPadding(context,left: 12, top: 4),
                                            child: Text("lbl_help_feedback".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16Gray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(context,
                                                                0.08)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(context,24),
                                            width: getSize(context,24),
                                            margin: getMargin(context,bottom: 1))
                                      ])),
                              Padding(
                                  padding: getPadding(context,top: 17),
                                  child: Divider(
                                      height: getVerticalSize(context,1),
                                      thickness: getVerticalSize(context,1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(context,36))),
                              Padding(
                                  padding: getPadding(context,top: 16),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgWarning,
                                            height: getSize(context,24),
                                            width: getSize(context,24)),
                                        Padding(
                                            padding:
                                                getPadding(context,left: 12, top: 2),
                                            child: Text("lbl_about_us".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16Gray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(context,
                                                                0.08)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(context,24),
                                            width: getSize(context,24))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtLargelabelmediu(context);
                                      },
                                      child: Padding(
                                          padding: getPadding(context,top: 28),
                                          child: Text("lbl_logout".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansSemiBold16RedA200
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(context,
                                                              0.08))))))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.messagePage:
        return MessagePage.builder(context);
      case AppRoutes.savedPage:
        return SavedPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  onTapAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.personalInfoScreen,
    );
  }

  onTapPrivacy(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.experienceSettingScreen,
    );
  }

  onTapNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsScreen,
    );
  }

  onTapLanguage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.languageScreen,
    );
  }

  onTapRowlocation(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.privacyScreen,
    );
  }

  onTapTxtLargelabelmediu(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LogoutPopupDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft12(BuildContext context) {
    NavigatorService.goBack();
  }
}
