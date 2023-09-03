import '../applied_job_screen/widgets/listclock2_item_widget.dart';
import '../applied_job_screen/widgets/listdescription2_item_widget.dart';
import 'bloc/applied_job_bloc.dart';
import 'models/applied_job_model.dart';
import 'models/listclock2_item_model.dart';
import 'models/listdescription2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_button.dart';

class AppliedJobScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AppliedJobBloc>(
        create: (context) => AppliedJobBloc(
            AppliedJobState(appliedJobModelObj: AppliedJobModel()))
          ..add(AppliedJobInitialEvent()),
        child: AppliedJobScreen());
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
                      onTapArrowleft8(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_job_details".tr),
                actions: [
                  AppbarImage(
                      height: getSize(context,24),
                      width: getSize(context,24),
                      svgPath: ImageConstant.imgBookmark,
                      margin:
                          getMargin(context,left: 16, top: 13, right: 16, bottom: 13))
                ]),
            body: Container(
                height: getVerticalSize(context,718),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: getMargin(context,right: 24),
                                padding: getPadding(context,
                                    left: 72, top: 24, right: 72, bottom: 24),
                                decoration: AppDecoration.outlineIndigo50(context)
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16(context)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.gray100,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder39(context)),
                                          child: Container(
                                              height: getSize(context,79),
                                              width: getSize(context,79),
                                              padding: getPadding(context,all: 19),
                                              decoration: AppDecoration
                                                  .fillGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder39(context)),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgFilter,
                                                    height: getSize(context,40),
                                                    width: getSize(context,40),
                                                    alignment: Alignment.center)
                                              ]))),
                                      Padding(
                                          padding: getPadding(context,top: 16),
                                          child: Text("msg_senior_ui_ux_de".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansBold14Bluegray900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(context,
                                                              0.07)))),
                                      Padding(
                                          padding: getPadding(context,top: 7),
                                          child: Text("lbl_shopee_sg".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansMedium12
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(context,
                                                              0.06)))),
                                      Padding(
                                          padding: getPadding(context,left: 1, top: 12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomButton(
                                                    height: getVerticalSize(context,28),
                                                    width:
                                                        getHorizontalSize(context,69),
                                                    text: "lbl_fulltime".tr,
                                                    variant: ButtonVariant
                                                        .FillGray100,
                                                    shape: ButtonShape
                                                        .RoundedBorder8,
                                                    fontStyle: ButtonFontStyle
                                                        .InterRegular12Bluegray400),
                                                CustomButton(
                                                    height: getVerticalSize(context,28),
                                                    width:
                                                        getHorizontalSize(context,104),
                                                    text: "lbl_two_days_ago".tr,
                                                    margin: getMargin(context,left: 9),
                                                    variant: ButtonVariant
                                                        .FillGray100,
                                                    shape: ButtonShape
                                                        .RoundedBorder8,
                                                    fontStyle: ButtonFontStyle
                                                        .InterRegular12Bluegray400)
                                              ]))
                                    ])),
                            Container(
                                height: getVerticalSize(context,124),
                                child: BlocSelector<AppliedJobBloc,
                                        AppliedJobState, AppliedJobModel?>(
                                    selector: (state) =>
                                        state.appliedJobModelObj,
                                    builder: (context, appliedJobModelObj) {
                                      return ListView.separated(
                                          padding: getPadding(context,
                                              left: 15, top: 24, right: 48),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(context,54));
                                          },
                                          itemCount: appliedJobModelObj
                                                  ?.listclock2ItemList.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            Listclock2ItemModel model =
                                                appliedJobModelObj
                                                            ?.listclock2ItemList[
                                                        index] ??
                                                    Listclock2ItemModel();
                                            return Listclock2ItemWidget(model);
                                          });
                                    })),
                            Container(
                                height: getVerticalSize(context,69),
                                child: BlocSelector<AppliedJobBloc,
                                        AppliedJobState, AppliedJobModel?>(
                                    selector: (state) =>
                                        state.appliedJobModelObj,
                                    builder: (context, appliedJobModelObj) {
                                      return ListView.separated(
                                          padding: getPadding(context,top: 25),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(context,12));
                                          },
                                          itemCount: appliedJobModelObj
                                                  ?.listdescription2ItemList
                                                  .length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            Listdescription2ItemModel model =
                                                appliedJobModelObj
                                                            ?.listdescription2ItemList[
                                                        index] ??
                                                    Listdescription2ItemModel();
                                            return Listdescription2ItemWidget(
                                                model);
                                          });
                                    })),
                            Padding(
                                padding: getPadding(context,top: 20),
                                child: Text("lbl_job_description".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansBold16Bluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(context,0.08)))),
                            Container(
                                width: getHorizontalSize(context,319),
                                margin: getMargin(context,left: 7, top: 13, right: 24),
                                child: Text("msg_lorem_ipsum_dol4".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansMedium14Gray600
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(context,0.07))))
                          ])),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(context,
                              left: 24, top: 28, right: 24, bottom: 28),
                          decoration: AppDecoration.gradientGray50Gray5000,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(context,56),
                                    text: "lbl_applied".tr,
                                    margin: getMargin(context,bottom: 12),
                                    variant: ButtonVariant.FillBluegray5001,
                                    padding: ButtonPadding.PaddingAll17,
                                    fontStyle: ButtonFontStyle
                                        .PlusJakartaSansSemiBold16Bluegray300_1)
                              ])))
                ]))));
  }

  onTapArrowleft8(BuildContext context) {
    NavigatorService.goBack();
  }
}
