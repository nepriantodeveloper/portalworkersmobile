import 'package:flutter/material.dart';
import 'package:stockworkers/core/utils/color_constant.dart';
import 'package:stockworkers/core/utils/size_utils.dart';


class CustomSearchView extends StatelessWidget {
  CustomSearchView(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints});

  SearchViewShape? shape;

  SearchViewPadding? padding;

  SearchViewVariant? variant;

  SearchViewFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSearchViewWidget(context),
          )
        : _buildSearchViewWidget(context);
  }

  _buildSearchViewWidget(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(context),
        decoration: _buildDecoration(context),
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
      case SearchViewVariant.None:
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
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case SearchViewVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding(BuildContext context) {
    switch (padding) {
      case SearchViewPadding.PaddingT15:
        return getPadding(context,
          top: 15,
          bottom: 15,
        );
      default:
        return getPadding(context,
          top: 15,
          right: 15,
          bottom: 15,
        );
    }
  }
}

enum SearchViewShape {
  RoundedBorder24,
}

enum SearchViewPadding {
  PaddingT13,
  PaddingT15,
}

enum SearchViewVariant {
  None,
  OutlineIndigo50,
}

enum SearchViewFontStyle {
  PlusJakartaSansMedium16,
}
