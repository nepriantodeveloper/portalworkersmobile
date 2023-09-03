import 'package:flutter/material.dart';
import 'package:stockworkers/core/utils/color_constant.dart';
import 'package:stockworkers/core/utils/size_utils.dart';


class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(context,height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(context,width ?? 0),
          height: getSize(context,height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll16:
        return getPadding(context,
          all: 16,
        );
      case IconButtonPadding.PaddingAll12:
        return getPadding(context,
          all: 12,
        );
      case IconButtonPadding.PaddingAll2:
        return getPadding(context,
          all: 4,
        );
      default:
        return getPadding(context,
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGray90065:
        return ColorConstant.gray90065;
      case IconButtonVariant.FillOrange50065:
        return ColorConstant.orange50065;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillTealA70065:
        return ColorConstant.tealA70065;
      case IconButtonVariant.FillDeeppurple40065:
        return ColorConstant.deepPurple40065;
      default:
        return ColorConstant.gray100;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder32:
        return BorderRadius.circular(
          getHorizontalSize(context,
            32.00,
          ),
        );
      case IconButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(context,
            24.00,
          ),
        );
      case IconButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(context,
            16.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(context,
            8.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder8,
  CircleBorder32,
  CircleBorder24,
  CircleBorder16,
}

enum IconButtonPadding {
  PaddingAll8,
  PaddingAll16,
  PaddingAll12,
  PaddingAll2,
}

enum IconButtonVariant {
  FillGray100,
  FillGray90065,
  FillOrange50065,
  FillWhiteA700,
  FillTealA70065,
  FillDeeppurple40065,
}
