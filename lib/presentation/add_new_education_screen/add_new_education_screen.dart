import 'bloc/add_new_education_bloc.dart';
import 'models/add_new_education_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_button.dart';
import 'package:stockworkers/widgets/custom_drop_down.dart';
import 'package:stockworkers/widgets/custom_text_form_field.dart';

class AddNewEducationScreen extends StatelessWidget {
  const AddNewEducationScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<AddNewEducationBloc>(
        create: (context) => AddNewEducationBloc(AddNewEducationState(
            addNewEducationModelObj: AddNewEducationModel()))
          ..add(AddNewEducationInitialEvent()),
        child: const AddNewEducationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(context, 24),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 24),
                    onTap: () {
                      onTapArrowleft16(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_add_new_educati".tr)),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(context,
                            left: 24, top: 45, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_school".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Bluegray900
                                      .copyWith(
                                          letterSpacing: getHorizontalSize(
                                              context, 0.07))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      TextEditingController?>(
                                  selector: (state) => state.frameOneController,
                                  builder: (context, frameOneController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: frameOneController,
                                        hintText: "msg_ex_harvard_uni".tr,
                                        margin: getMargin(context, top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(context, top: 20),
                                  child: Text("lbl_degree".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                  context, 0.07)))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      AddNewEducationModel?>(
                                  selector: (state) =>
                                      state.addNewEducationModelObj,
                                  builder: (context, addNewEducationModelObj) {
                                    return CustomDropDown(
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin: getMargin(context,
                                                left: 30, right: 24),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray90002),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownGray90002)),
                                        hintText: "lbl_ex_bachelor".tr,
                                        margin: getMargin(context, top: 7),
                                        items: addNewEducationModelObj
                                                ?.dropdownItemList ??
                                            [],
                                        onChanged: (value) {
                                          context
                                              .read<AddNewEducationBloc>()
                                              .add(ChangeDropDownEvent(
                                                  value: value));
                                        });
                                  }),
                              Padding(
                                  padding: getPadding(context, top: 20),
                                  child: Text("lbl_field_of_study".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                  context, 0.07)))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.frameOneTwoController,
                                  builder: (context, frameOneTwoController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: frameOneTwoController,
                                        hintText: "lbl_ex_business".tr,
                                        margin: getMargin(context, top: 7));
                                  }),
                              Padding(
                                  padding: getPadding(context, top: 18),
                                  child: Text("lbl_start_date".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                  context, 0.07)))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowsmalllabelregultwo(context);
                                  },
                                  child: Container(
                                      margin: getMargin(context, top: 9),
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
                                                padding:
                                                    getPadding(context, top: 2),
                                                child: BlocSelector<
                                                        AddNewEducationBloc,
                                                        AddNewEducationState,
                                                        String?>(
                                                    selector: (state) => state
                                                        .addNewEducationModelObj!
                                                        .smalllabelregulTwoTxt,
                                                    builder: (context,
                                                        smalllabelregulTwoTxt) {
                                                      return Text(
                                                          smalllabelregulTwoTxt ??
                                                              "",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansMedium16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          context,
                                                                          0.08)));
                                                    })),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar,
                                                height: getSize(context, 24),
                                                width: getSize(context, 24))
                                          ]))),
                              Padding(
                                  padding: getPadding(context, top: 18),
                                  child: Text("lbl_end_date".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                  context, 0.07)))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowsmalllabelregulthree(context);
                                  },
                                  child: Container(
                                      margin: getMargin(context, top: 9),
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
                                                padding:
                                                    getPadding(context, top: 2),
                                                child: BlocSelector<
                                                        AddNewEducationBloc,
                                                        AddNewEducationState,
                                                        String?>(
                                                    selector: (state) => state
                                                        .addNewEducationModelObj!
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
                                                                      getHorizontalSize(
                                                                          context,
                                                                          0.08)));
                                                    })),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar,
                                                height: getSize(context, 24),
                                                width: getSize(context, 24))
                                          ]))),
                              Padding(
                                  padding: getPadding(context, top: 18),
                                  child: Text("lbl_grade".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                  context, 0.07)))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.frameOneThreeController,
                                  builder: (context, frameOneThreeController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: frameOneThreeController,
                                        hintText: "lbl_ex_business".tr,
                                        margin: getMargin(context, top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(context, top: 20),
                                  child: Text("lbl_description".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                  context, 0.07)))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.frameOneFourController,
                                  builder: (context, frameOneFourController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: frameOneFourController,
                                        hintText: "lbl_lorem_ipsun".tr,
                                        margin: getMargin(context, top: 7),
                                        padding:
                                            TextFormFieldPadding.PaddingT55,
                                        textInputAction: TextInputAction.done,
                                        maxLines: 6);
                                  })
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 56),
                text: "lbl_save_changes".tr,
                margin: getMargin(context, left: 24, right: 24, bottom: 37),
                padding: ButtonPadding.PaddingAll17,
                fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                onTap: () {
                  onTapSavechanges(context);
                })));
  }

  Future<void> onTapRowsmalllabelregultwo(BuildContext context) async {
    var initialState = BlocProvider.of<AddNewEducationBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.addNewEducationModelObj?.selectedSmalllabelregulTwoTxt =
          dateTime;
      context
          .read<AddNewEducationBloc>()
          .add(ChangeDateEvent(date: dateTime.format(DD_MM_YYYY)));
    }
  }

  Future<void> onTapRowsmalllabelregulthree(BuildContext context) async {
    var initialState = BlocProvider.of<AddNewEducationBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.addNewEducationModelObj?.selectedSmalllabelregulThreeTxt =
          dateTime;
      context
          .read<AddNewEducationBloc>()
          .add(ChangeDateEvent1(date: dateTime.format(DD_MM_YYYY)));
    }
  }

  onTapSavechanges(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.experienceSettingScreen,
    );
  }

  onTapArrowleft16(BuildContext context) {
    NavigatorService.goBack();
  }
}
