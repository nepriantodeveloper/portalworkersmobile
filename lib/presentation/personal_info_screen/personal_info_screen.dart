import 'bloc/personal_info_bloc.dart';
import 'models/personal_info_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/widgets/custom_button.dart';
import 'package:stockworkers/widgets/custom_text_form_field.dart';

class PersonalInfoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalInfoBloc>(
        create: (context) => PersonalInfoBloc(
            PersonalInfoState(personalInfoModelObj: PersonalInfoModel()))
          ..add(PersonalInfoInitialEvent()),
        child: PersonalInfoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(context,50),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context,24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context,left: 24, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft13(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_personal_info".tr),
                actions: [
                  AppbarImage(
                      height: getSize(context,24),
                      width: getSize(context,24),
                      svgPath: ImageConstant.imgEdit,
                      margin:
                          getMargin(context,left: 24, top: 13, right: 24, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context,left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_first_name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPlusJakartaSansMedium14.copyWith(
                              letterSpacing: getHorizontalSize(context,0.07))),
                      BlocSelector<PersonalInfoBloc, PersonalInfoState,
                              TextEditingController?>(
                          selector: (state) => state.frameOneController,
                          builder: (context, frameOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameOneController,
                                hintText: "lbl_gustavo".tr,
                                margin: getMargin(context,top: 9));
                          }),
                      Padding(
                          padding: getPadding(context,top: 18),
                          child: Text("lbl_last_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium14
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context,0.07)))),
                      BlocSelector<PersonalInfoBloc, PersonalInfoState,
                              TextEditingController?>(
                          selector: (state) => state.frameOneOneController,
                          builder: (context, frameOneOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameOneOneController,
                                hintText: "lbl_lipshutz".tr,
                                margin: getMargin(context,top: 9));
                          }),
                      Padding(
                          padding: getPadding(context,top: 18),
                          child: Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium14
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context,0.07)))),
                      BlocSelector<PersonalInfoBloc, PersonalInfoState,
                              TextEditingController?>(
                          selector: (state) => state.emailOneController,
                          builder: (context, emailOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: emailOneController,
                                hintText: "lbl_xyz_gmail_com".tr,
                                margin: getMargin(context,top: 9),
                                textInputType: TextInputType.emailAddress);
                          }),
                      Padding(
                          padding: getPadding(context,top: 18),
                          child: Text("lbl_phone".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium14
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context,0.07)))),
                      BlocSelector<PersonalInfoBloc, PersonalInfoState,
                              TextEditingController?>(
                          selector: (state) => state.mobileNoController,
                          builder: (context, mobileNoController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: mobileNoController,
                                hintText: "lbl_1_1234567890".tr,
                                margin: getMargin(context,top: 9));
                          }),
                      Padding(
                          padding: getPadding(context,top: 18),
                          child: Text("lbl_location".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium14
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context,0.07)))),
                      BlocSelector<PersonalInfoBloc, PersonalInfoState,
                              TextEditingController?>(
                          selector: (state) => state.frameOneTwoController,
                          builder: (context, frameOneTwoController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameOneTwoController,
                                hintText: "lbl_lorem_ipsun".tr,
                                margin: getMargin(context,top: 9, bottom: 5),
                                padding: TextFormFieldPadding.PaddingT55,
                                textInputAction: TextInputAction.done,
                                maxLines: 6);
                          })
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context,56),
                text: "lbl_save_changes".tr,
                margin: getMargin(context,left: 24, right: 24, bottom: 44),
                variant: ButtonVariant.FillBluegray5001,
                padding: ButtonPadding.PaddingAll17,
                fontStyle:
                    ButtonFontStyle.PlusJakartaSansSemiBold16Bluegray300_1,
                onTap: () {
                  onBackPressed(context);
                })));
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapArrowleft13(BuildContext context) {
    NavigatorService.goBack();
  }
}
