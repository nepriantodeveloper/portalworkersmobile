import '../models/message_action_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';

// ignore: must_be_immutable
class MessageActionItemWidget extends StatelessWidget {
  MessageActionItemWidget(this.messageActionItemModelObj,
      {this.onTapChat, this.onTapRowdot});

  MessageActionItemModel messageActionItemModelObj;

  VoidCallback? onTapChat;

  VoidCallback? onTapRowdot;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapChat?.call();
      },
      child: Container(
        height: getVerticalSize(context,
          73,
        ),
        width: getHorizontalSize(context,
          327,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: getSize(context,
                  56,
                ),
                width: getSize(context,
                  56,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray100,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(context,
                      28,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () {
                  onTapRowdot?.call();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: getSize(context,
                        56,
                      ),
                      width: getSize(context,
                        56,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage56x561,
                            height: getSize(context,
                              56,
                            ),
                            width: getSize(context,
                              56,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(context,
                                28,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getSize(context,
                                16,
                              ),
                              width: getSize(context,
                                16,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.tealA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(context,
                                    8,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.whiteA700,
                                  width: getHorizontalSize(context,
                                    1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(context,
                        left: 12,
                        top: 3,
                        bottom: 1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            messageActionItemModelObj.estherhowardTxt,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPlusJakartaSansBold18.copyWith(
                              letterSpacing: getHorizontalSize(context,
                                0.09,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(context,
                              top: 9,
                            ),
                            child: Text(
                              "msg_lorem_ipsum_dol".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray400
                                  .copyWith(
                                letterSpacing: getHorizontalSize(context,
                                  0.07,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(context,
                        left: 30,
                        top: 7,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_10_20".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtPlusJakartaSansSemiBold12Bluegray400
                                .copyWith(
                              letterSpacing: getHorizontalSize(context,
                                0.06,
                              ),
                            ),
                          ),
                          Container(
                            width: getSize(context,
                              24,
                            ),
                            margin: getMargin(context,
                              top: 8,
                            ),
                            padding: getPadding(context,
                              left: 8,
                              top: 5,
                              right: 8,
                              bottom: 5,
                            ),
                            decoration: AppDecoration.txtFillGray900.copyWith(
                              borderRadius: BorderRadiusStyle.txtCircleBorder14,
                            ),
                            child: Text(
                              messageActionItemModelObj.group162722Txt,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansSemiBold10
                                  .copyWith(
                                letterSpacing: getHorizontalSize(context,
                                  0.05,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
