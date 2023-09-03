import '../saved_detail_job_screen/widgets/listclock1_item_widget.dart';
import '../saved_detail_job_screen/widgets/listdescription1_item_widget.dart';
import 'bloc/saved_detail_job_bloc.dart';
import 'models/listclock1_item_model.dart';
import 'models/listdescription1_item_model.dart';
import 'models/saved_detail_job_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_button.dart';

class SavedDetailJobScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SavedDetailJobBloc>(
        create: (context) => SavedDetailJobBloc(
            SavedDetailJobState(savedDetailJobModelObj: SavedDetailJobModel()))
          ..add(SavedDetailJobInitialEvent()),
        child: SavedDetailJobScreen());
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
                      onTapArrowleft6(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_saved".tr)),
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
                                    left: 75, top: 24, right: 72, bottom: 24),
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
                                child: BlocSelector<
                                        SavedDetailJobBloc,
                                        SavedDetailJobState,
                                        SavedDetailJobModel?>(
                                    selector: (state) =>
                                        state.savedDetailJobModelObj,
                                    builder: (context, savedDetailJobModelObj) {
                                      return ListView.separated(
                                          padding: getPadding(context,
                                              left: 15, top: 24, right: 48),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(context,54));
                                          },
                                          itemCount: savedDetailJobModelObj
                                                  ?.listclock1ItemList.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            Listclock1ItemModel model =
                                                savedDetailJobModelObj
                                                            ?.listclock1ItemList[
                                                        index] ??
                                                    Listclock1ItemModel();
                                            return Listclock1ItemWidget(model);
                                          });
                                    })),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(context,69),
                                    child: BlocSelector<
                                            SavedDetailJobBloc,
                                            SavedDetailJobState,
                                            SavedDetailJobModel?>(
                                        selector: (state) =>
                                            state.savedDetailJobModelObj,
                                        builder:
                                            (context, savedDetailJobModelObj) {
                                          return ListView.separated(
                                              padding: getPadding(context,top: 25),
                                              scrollDirection: Axis.horizontal,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height:
                                                        getVerticalSize(context,12));
                                              },
                                              itemCount: savedDetailJobModelObj
                                                      ?.listdescription1ItemList
                                                      .length ??
                                                  0,
                                              itemBuilder: (context, index) {
                                                Listdescription1ItemModel
                                                    model =
                                                    savedDetailJobModelObj
                                                                ?.listdescription1ItemList[
                                                            index] ??
                                                        Listdescription1ItemModel();
                                                return Listdescription1ItemWidget(
                                                    model);
                                              });
                                        }))),
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
                                    text: "lbl_apply_now".tr,
                                    margin: getMargin(context,bottom: 12),
                                    padding: ButtonPadding.PaddingAll17,
                                    fontStyle: ButtonFontStyle
                                        .PlusJakartaSansSemiBold16Gray50,
                                    onTap: () {
                                      onTapApplynow(context);
                                    })
                              ])))
                ]))));
  }

  onTapApplynow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.applyJobScreen,
    );
  }

  onTapArrowleft6(BuildContext context) {
    NavigatorService.goBack();
  }
}
