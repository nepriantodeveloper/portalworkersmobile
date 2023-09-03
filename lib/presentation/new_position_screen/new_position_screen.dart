import 'bloc/new_position_bloc.dart';
import 'models/new_position_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_button.dart';
import 'package:stockworkers/widgets/custom_text_form_field.dart';

class NewPositionScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NewPositionBloc>(
        create: (context) => NewPositionBloc(
            NewPositionState(newPositionModelObj: NewPositionModel()))
          ..add(NewPositionInitialEvent()),
        child: NewPositionScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(context,24),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context,24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context,left: 24),
                    onTap: () {
                      onTapArrowleft15(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_add_new_positio".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(context,left: 24, top: 49, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_title".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Bluegray900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(context,0.07))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) => state.frameOneController,
                                  builder: (context, frameOneController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: frameOneController,
                                        hintText: "lbl_ex_ui_designer".tr,
                                        margin: getMargin(context,top: 9));
                                  }),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(context,top: 20),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_employment_type".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14Bluegray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(context,
                                                                0.07))),
                                            Container(
                                                margin: getMargin(context,top: 7),
                                                padding: getPadding(context,
                                                    left: 16,
                                                    top: 13,
                                                    right: 16,
                                                    bottom: 13),
                                                decoration: AppDecoration
                                                    .outlineIndigo50
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder24),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(context,
                                                              top: 2),
                                                          child: Text(
                                                              "lbl_please_select"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansMedium16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(context,
                                                                              0.08)))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdownGray90002,
                                                          height: getSize(context,24),
                                                          width: getSize(context,24),
                                                          margin: getMargin(context,
                                                              right: 3))
                                                    ]))
                                          ]))),
                              Padding(
                                  padding: getPadding(context,top: 20),
                                  child: Text("lbl_company_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context,0.07)))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.frameOneOneController,
                                  builder: (context, frameOneOneController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: frameOneOneController,
                                        hintText: "lbl_ex_shopee".tr,
                                        margin: getMargin(context,top: 7));
                                  }),
                              Padding(
                                  padding: getPadding(context,top: 18),
                                  child: Text("lbl_location2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context,0.07)))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) => state.countryController,
                                  builder: (context, countryController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: countryController,
                                        hintText: "msg_ex_singapore".tr,
                                        margin: getMargin(context,top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(context,top: 18),
                                  child: Text("lbl_start_date".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context,0.07)))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowsmalllabelregulthree(context);
                                  },
                                  child: Container(
                                      margin: getMargin(context,top: 9),
                                      padding: getPadding(context,
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.outlineIndigo50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder24),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(context,top: 2),
                                                child: BlocSelector<
                                                        NewPositionBloc,
                                                        NewPositionState,
                                                        String?>(
                                                    selector: (state) => state
                                                        .newPositionModelObj!
                                                        .smalllabelregulThreeTxt,
                                                    builder: (context,
                                                        smalllabelregulThreeTxt) {
                                                      return Text(
                                                          smalllabelregulThreeTxt ??
                                                              "",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansMedium16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.08)));
                                                    })),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar,
                                                height: getSize(context,24),
                                                width: getSize(context,24))
                                          ]))),
                              Padding(
                                  padding: getPadding(context,top: 18),
                                  child: Text("lbl_end_date".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context,0.07)))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowsmalllabelregulfour(context);
                                  },
                                  child: Container(
                                      margin: getMargin(context,top: 9),
                                      padding: getPadding(context,
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.outlineIndigo50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder24),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(context,top: 2),
                                                child: BlocSelector<
                                                        NewPositionBloc,
                                                        NewPositionState,
                                                        String?>(
                                                    selector: (state) => state
                                                        .newPositionModelObj!
                                                        .smalllabelregulFourTxt,
                                                    builder: (context,
                                                        smalllabelregulFourTxt) {
                                                      return Text(
                                                          smalllabelregulFourTxt ??
                                                              "",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansMedium16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(context,
                                                                          0.08)));
                                                    })),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar,
                                                height: getSize(context,24),
                                                width: getSize(context,24))
                                          ]))),
                              Padding(
                                  padding: getPadding(context,top: 20),
                                  child: Text("msg_job_role_descri".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context,0.07)))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.frameOneTwoController,
                                  builder: (context, frameOneTwoController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: frameOneTwoController,
                                        hintText: "lbl_lorem_ipsun".tr,
                                        margin: getMargin(context,top: 7),
                                        padding:
                                            TextFormFieldPadding.PaddingT55,
                                        textInputAction: TextInputAction.done,
                                        maxLines: 6);
                                  })
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context,56),
                text: "lbl_save_changes".tr,
                margin: getMargin(context,left: 24, right: 24, bottom: 37),
                padding: ButtonPadding.PaddingAll17,
                fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                onTap: () {
                  onTapSavechanges(context);
                })));
  }

  Future<void> onTapRowsmalllabelregulthree(BuildContext context) async {
    var initialState = BlocProvider.of<NewPositionBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.newPositionModelObj?.selectedSmalllabelregulThreeTxt =
          dateTime;
      context
          .read<NewPositionBloc>()
          .add(ChangeDateEvent(date: dateTime.format(DD_MM_YYYY)));
    }
  }

  Future<void> onTapRowsmalllabelregulfour(BuildContext context) async {
    var initialState = BlocProvider.of<NewPositionBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.newPositionModelObj?.selectedSmalllabelregulFourTxt =
          dateTime;
      context
          .read<NewPositionBloc>()
          .add(ChangeDateEvent1(date: dateTime.format(DD_MM_YYYY)));
    }
  }

  onTapSavechanges(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.experienceSettingScreen,
    );
  }

  onTapArrowleft15(BuildContext context) {
    NavigatorService.goBack();
  }
}
