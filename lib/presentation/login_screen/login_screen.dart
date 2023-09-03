import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/custom_button.dart';
import 'package:stockworkers/widgets/custom_text_form_field.dart';
import 'package:stockworkers/domain/googleauth/google_auth_helper.dart';

class LoginScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context,left: 24, top: 13, right: 24, bottom: 13),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(context,24),
                          width: getSize(context,24),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(context,top: 44),
                          child: Text("msg_hi_welcome_bac".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansBold24.copyWith(
                                  letterSpacing: getHorizontalSize(context,0.12)))),
                      Padding(
                          padding: getPadding(context,top: 11),
                          child: Text("msg_lorem_ipsum_dol6".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray400
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context,0.07)))),
                      CustomButton(
                          height: getVerticalSize(context,56),
                          text: "msg_continue_with_g".tr,
                          margin: getMargin(context,top: 31),
                          variant: ButtonVariant.OutlineGray900,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle
                              .PlusJakartaSansSemiBold16Gray900_1,
                          prefixWidget: Container(
                              margin: getMargin(context,right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgGoogle)),
                          onTap: () {
                            onTapContinuewithgoogle(context);
                          }),
                      CustomButton(
                          height: getVerticalSize(context,56),
                          text: "msg_continue_with_a".tr,
                          margin: getMargin(context,top: 16),
                          variant: ButtonVariant.OutlineGray900,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle
                              .PlusJakartaSansSemiBold16Gray900_1,
                          prefixWidget: Container(
                              margin: getMargin(context,right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFire))),
                      Padding(
                          padding: getPadding(context,left: 33, top: 26, right: 33),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(context,top: 8, bottom: 8),
                                    child: SizedBox(
                                        width: getHorizontalSize(context,62),
                                        child: Divider(
                                            height: getVerticalSize(context,1),
                                            thickness: getVerticalSize(context,1),
                                            color: ColorConstant.indigo50))),
                                Padding(
                                    padding: getPadding(context,left: 12),
                                    child: Text("msg_or_continue_wit".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansSemiBold14Bluegray300
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context,0.07)))),
                                Padding(
                                    padding: getPadding(context,top: 8, bottom: 8),
                                    child: SizedBox(
                                        width: getHorizontalSize(context,74),
                                        child: Divider(
                                            height: getVerticalSize(context,1),
                                            thickness: getVerticalSize(context,1),
                                            color: ColorConstant.indigo50,
                                            indent: getHorizontalSize(context,12))))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(context,top: 28),
                              child: Text("lbl_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Bluegray900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(context,0.07))))),
                      BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                          selector: (state) => state.frameOneController,
                          builder: (context, frameOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameOneController,
                                hintText: "msg_enter_your_emai".tr,
                                margin: getMargin(context,top: 9),
                                padding: TextFormFieldPadding.PaddingT15,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress);
                          }),
                      CustomButton(
                          height: getVerticalSize(context,56),
                          text: "msg_continue_with_e".tr,
                          margin: getMargin(context,top: 40),
                          padding: ButtonPadding.PaddingAll17,
                          fontStyle:
                              ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                          onTap: () {
                            onTapContinuewithemail(context);
                          }),
                      Padding(
                          padding: getPadding(context,left: 41, top: 26, right: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(context,bottom: 1),
                                    child: Text("msg_don_t_have_an_account".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansSemiBold16
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context,0.08)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLanguage(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(context,left: 2, top: 1),
                                        child: Text("lbl_sign_up".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold16Gray900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(context,
                                                            0.08)))))
                              ])),
                      Container(
                          width: getHorizontalSize(context,245),
                          margin: getMargin(context,
                              left: 40, top: 84, right: 40, bottom: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_by_signing_up_y2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray400,
                                        fontSize: getFontSize(context,14),
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing:
                                            getHorizontalSize(context,0.07))),
                                TextSpan(
                                    text: "lbl_terms".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray90001,
                                        fontSize: getFontSize(context,14),
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing:
                                            getHorizontalSize(context,0.07))),
                                TextSpan(
                                    text: "lbl_and".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray400,
                                        fontSize: getFontSize(context,14),
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing:
                                            getHorizontalSize(context,0.07))),
                                TextSpan(
                                    text: "msg_conditions_of_u".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray90001,
                                        fontSize: getFontSize(context,14),
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: getHorizontalSize(context,0.07)))
                              ]),
                              textAlign: TextAlign.center))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapContinuewithgoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapContinuewithemail(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.enterOtpScreen,
    );
  }

  onTapTxtLanguage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpCreateAcountScreen,
    );
  }
}
