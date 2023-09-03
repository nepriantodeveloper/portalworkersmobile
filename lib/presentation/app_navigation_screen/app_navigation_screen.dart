import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:stock_workers/core/app_export.dart';
import 'package:stock_workers/presentation/confirmation_dialog/confirmation_dialog.dart';
import 'package:stock_workers/presentation/filter_bottomsheet/filter_bottomsheet.dart';
import 'package:stock_workers/presentation/apply_job_popup_dialog/apply_job_popup_dialog.dart';
import 'package:stock_workers/presentation/logout_popup_dialog/logout_popup_dialog.dart';

class AppNavigationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            decoration: AppDecoration.fillWhiteA700,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 20,
                                              top: 10,
                                              right: 20,
                                              bottom: 10),
                                          child: Text("lbl_app_navigation".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtRobotoRegular20))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(left: 20),
                                          child: Text("msg_check_your_app_s".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtRobotoRegular16))),
                                  Padding(
                                      padding: getPadding(top: 5),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.black900))
                                ])),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapSplashScreen(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_splash_screen"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapOnboardingOne(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_onboarding_one"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapOnboardingTwo(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_onboarding_two"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapOnboardingThree(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_onboarding_three"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSignUpCreateAcount(
                                                    context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_sign_up_create"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSignUpCompleteAccount(
                                                    context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_sign_up_complete"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapJobType(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_job_type"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSpeciallization(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_speciallization"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapConfirmation(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_confirmation"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSelectaCountry(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_select_a_countr"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapLogin(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_login2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapEnterOTP(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_enter_otp"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapHomeContainer(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_home_container"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSearch(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_search2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapFilter(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_filter"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapJobDetails(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_job_details"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapMessageAction(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_message_action"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapChat(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_chat"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSavedDetailJob(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_saved_detail_job"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapApplyJob(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_apply_job"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapApplyJobPopup(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_apply_job_popup"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapAppliedJob(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_applied_job"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapNotificationsGeneral(
                                                    context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_notifications"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapNotificationsMyProposals(
                                                    context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_notifications2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSettings(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_settings"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapLogoutpopup(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_logout_popup"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapPersonalInfo(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_personal_info"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapExperienceSetting(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_experience_setting"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapNewPosition(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_new_position"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapAddNewEducation(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_add_new_educati"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapPrivacy(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_privacy"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapLanguage(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_language"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapNotifications(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_notifications"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular20))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .blueGray40001))
                                                      ])))
                                        ]))))
                      ]))));
    });
  }

  onTapSplashScreen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashScreen,
    );
  }

  onTapOnboardingOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingOneScreen,
    );
  }

  onTapOnboardingTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }

  onTapOnboardingThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }

  onTapSignUpCreateAcount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpCreateAcountScreen,
    );
  }

  onTapSignUpCompleteAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpCompleteAccountScreen,
    );
  }

  onTapJobType(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.jobTypeScreen,
    );
  }

  onTapSpeciallization(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.speciallizationScreen,
    );
  }

  onTapConfirmation(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ConfirmationDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapSelectaCountry(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectACountryScreen,
    );
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapEnterOTP(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.enterOtpScreen,
    );
  }

  onTapHomeContainer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }

  onTapFilter(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => FilterBottomsheet.builder(context),
        isScrollControlled: true);
  }

  onTapJobDetails(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.jobDetailsScreen,
    );
  }

  onTapMessageAction(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.messageActionScreen,
    );
  }

  onTapChat(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatScreen,
    );
  }

  onTapSavedDetailJob(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.savedDetailJobScreen,
    );
  }

  onTapApplyJob(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.applyJobScreen,
    );
  }

  onTapApplyJobPopup(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ApplyJobPopupDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapAppliedJob(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appliedJobScreen,
    );
  }

  onTapNotificationsGeneral(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsGeneralScreen,
    );
  }

  onTapNotificationsMyProposals(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsMyProposalsScreen,
    );
  }

  onTapSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }

  onTapLogoutpopup(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LogoutPopupDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapPersonalInfo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.personalInfoScreen,
    );
  }

  onTapExperienceSetting(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.experienceSettingScreen,
    );
  }

  onTapNewPosition(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPositionScreen,
    );
  }

  onTapAddNewEducation(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNewEducationScreen,
    );
  }

  onTapPrivacy(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.privacyScreen,
    );
  }

  onTapLanguage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.languageScreen,
    );
  }

  onTapNotifications(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsScreen,
    );
  }
}
