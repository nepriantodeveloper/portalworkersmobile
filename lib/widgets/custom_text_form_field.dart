import 'package:flutter/material.dart';
import 'package:stockworkers/core/utils/color_constant.dart';
import 'package:stockworkers/core/utils/size_utils.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(context),
          )
        : _buildTextFormFieldWidget(context);
  }

  _buildTextFormFieldWidget(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(context),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(context),
        validator: validator,
      ),
    );
  }

  _buildDecoration(BuildContext context) {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(context),
      border: _setBorderStyle(context),
      enabledBorder: _setBorderStyle(context),
      focusedBorder: _setBorderStyle(context),
      disabledBorder: _setBorderStyle(context),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(context),
    );
  }

  _setFontStyle(BuildContext context) {
    switch (fontStyle) {
      case TextFormFieldFontStyle.PlusJakartaSansSemiBold16Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(context,
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(context,
            1.31,
          ),
        );
      case TextFormFieldFontStyle.PlusJakartaSansMedium12Gray6007c:
        return TextStyle(
          color: ColorConstant.gray6007c,
          fontSize: getFontSize(context,
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(context,
            1.33,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray400,
          fontSize: getFontSize(context,
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(context,
            1.31,
          ),
        );
    }
  }

  _setOutlineBorderRadius(BuildContext context) {
    switch (shape) {
      case TextFormFieldShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(context,
            28.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(context,
            24.00,
          ),
        );
    }
  }

  _setBorderStyle(BuildContext context) {
    switch (variant) {
      case TextFormFieldVariant.FillGray200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(context),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(context),
          borderSide: BorderSide(
            color: ColorConstant.indigo50,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillGray200:
        return ColorConstant.gray200;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillGray200:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding(BuildContext context) {
    switch (padding) {
      case TextFormFieldPadding.PaddingT15:
        return getPadding(context,
          left: 12,
          top: 15,
          right: 12,
          bottom: 15,
        );
      case TextFormFieldPadding.PaddingT15_1:
        return getPadding(context,
          left: 15,
          top: 15,
          bottom: 15,
        );
      case TextFormFieldPadding.PaddingT55:
        return getPadding(context,
          left: 16,
          top: 55,
          right: 16,
          bottom: 55,
        );
      case TextFormFieldPadding.PaddingT13:
        return getPadding(context,
          top: 13,
          right: 13,
          bottom: 13,
        );
      case TextFormFieldPadding.PaddingAll20:
        return getPadding(context,
          all: 20,
        );
      default:
        return getPadding(context,
          all: 15,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder24,
  CircleBorder28,
}

enum TextFormFieldPadding {
  PaddingT15,
  PaddingT15_1,
  PaddingAll15,
  PaddingT55,
  PaddingT13,
  PaddingAll20,
}

enum TextFormFieldVariant {
  None,
  OutlineIndigo50,
  FillGray200,
}

enum TextFormFieldFontStyle {
  PlusJakartaSansMedium16Bluegray400,
  PlusJakartaSansSemiBold16Gray900,
  PlusJakartaSansMedium12Gray6007c,
}
