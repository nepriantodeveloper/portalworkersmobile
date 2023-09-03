import 'bloc/apply_job_bloc.dart';
import 'models/apply_job_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_button.dart';
import 'package:stockworkers/presentation/apply_job_popup_dialog/apply_job_popup_dialog.dart';

class ApplyJobScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ApplyJobBloc>(
        create: (context) =>
            ApplyJobBloc(ApplyJobState(applyJobModelObj: ApplyJobModel()))
              ..add(ApplyJobInitialEvent()),
        child: ApplyJobScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplyJobBloc, ApplyJobState>(builder: (context, state) {
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
                        onTapArrowleft7(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_apply_job".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(context,left: 24, top: 31, right: 24, bottom: 31),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_full_name".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansMedium14
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(context,0.07))),
                                      Container(
                                          width: double.maxFinite,
                                          child: Container(
                                              width: getHorizontalSize(context,327),
                                              margin: getMargin(context,top: 9),
                                              padding: getPadding(context,
                                                  left: 16,
                                                  top: 12,
                                                  right: 16,
                                                  bottom: 12),
                                              decoration: AppDecoration
                                                  .outlineIndigo50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder24),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(context,top: 5),
                                                        child: Text(
                                                            "msg_brooklyn_simmon"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPlusJakartaSansMedium16
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(context,
                                                                            0.08))))
                                                  ])))
                                    ]))),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(context,top: 26),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_email_address".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansMedium14
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(context,0.07))),
                                      Container(
                                          width: double.maxFinite,
                                          child: Container(
                                              width: getHorizontalSize(context,327),
                                              margin: getMargin(context,top: 9),
                                              padding: getPadding(context,
                                                  left: 16,
                                                  top: 12,
                                                  right: 16,
                                                  bottom: 12),
                                              decoration: AppDecoration
                                                  .outlineIndigo50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder24),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(context,top: 5),
                                                        child: Text(
                                                            "lbl_xyz_gmail_com"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPlusJakartaSansMedium16
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(context,
                                                                            0.08))))
                                                  ])))
                                    ]))),
                        Padding(
                            padding: getPadding(context,top: 28),
                            child: Text("lbl_upload_cv".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPlusJakartaSansMedium14
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(context,0.07)))),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(context,top: 7),
                                padding: getPadding(context,
                                    left: 125, top: 39, right: 125, bottom: 39),
                                decoration: AppDecoration.outlineIndigo502
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder24),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgLock,
                                          height: getSize(context,40),
                                          width: getSize(context,40)),
                                      Padding(
                                          padding: getPadding(context,top: 8),
                                          child: Text("lbl_upload_file".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansSemiBold14Gray900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(context,
                                                              0.07))))
                                    ]))),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(context,top: 28, bottom: 5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_website_blog".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansMedium14
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(context,0.07))),
                                      Container(
                                          width: double.maxFinite,
                                          child: Container(
                                              width: getHorizontalSize(context,327),
                                              margin: getMargin(context,top: 7),
                                              padding: getPadding(context,
                                                  left: 16,
                                                  top: 12,
                                                  right: 16,
                                                  bottom: 12),
                                              decoration: AppDecoration
                                                  .outlineIndigo50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder24),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(context,top: 5),
                                                        child: Text(
                                                            "lbl_https".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPlusJakartaSansMedium16
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(context,
                                                                            0.08))))
                                                  ])))
                                    ])))
                      ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(context,56),
                  text: "lbl_continue".tr,
                  margin: getMargin(context,left: 24, right: 24, bottom: 40),
                  padding: ButtonPadding.PaddingAll17,
                  fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                  onTap: () {
                    onTapContinue(context);
                  })));
    });
  }

  onTapContinue(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ApplyJobPopupDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft7(BuildContext context) {
    NavigatorService.goBack();
  }
}
