import 'bloc/confirmation_bloc.dart';
import 'models/confirmation_model.dart';
import 'package:flutter/material.dart';
import 'package:stock_workers/core/app_export.dart';
import 'package:stock_workers/widgets/custom_button.dart';

class ConfirmationDialog extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmationBloc>(
        create: (context) => ConfirmationBloc(
            ConfirmationState(confirmationModelObj: ConfirmationModel()))
          ..add(ConfirmationInitialEvent()),
        child: ConfirmationDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(331),
        padding: getPadding(left: 25, top: 39, right: 25, bottom: 39),
        decoration: AppDecoration.fillWhiteA70003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: getHorizontalSize(279),
                  margin: getMargin(top: 3),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_i_agree_to_the".tr,
                            style: TextStyle(
                                color: ColorConstant.blueGray400,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08))),
                        TextSpan(
                            text: "msg_terms_of_servic".tr,
                            style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08))),
                        TextSpan(
                            text: "lbl_and".tr,
                            style: TextStyle(
                                color: ColorConstant.blueGray400,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08))),
                        TextSpan(
                            text: "msg_conditions_of_u".tr,
                            style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08))),
                        TextSpan(
                            text: "msg_including_conse".tr,
                            style: TextStyle(
                                color: ColorConstant.blueGray400,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08)))
                      ]),
                      textAlign: TextAlign.center)),
              CustomButton(
                  height: getVerticalSize(46),
                  width: getHorizontalSize(181),
                  text: "msg_agree_and_conti".tr,
                  margin: getMargin(top: 21),
                  shape: ButtonShape.RoundedBorder20,
                  padding: ButtonPadding.PaddingAll16,
                  fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold14Gray50,
                  onTap: () {
                    onTapAgreeandcontinue(context);
                  }),
              Padding(
                  padding: getPadding(top: 28),
                  child: Text("lbl_disgree".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPlusJakartaSansSemiBold14RedA200
                          .copyWith(letterSpacing: getHorizontalSize(0.07))))
            ]));
  }

  onTapAgreeandcontinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
