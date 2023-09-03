import '../models/chipviewskills_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewskillsOneItemWidget extends StatelessWidget {
  ChipviewskillsOneItemWidget(this.chipviewskillsOneItemModelObj,
      {this.onSelectedChipView});

  ChipviewskillsOneItemModel chipviewskillsOneItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(context,
        left: 16,
        right: 16,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewskillsOneItemModelObj.skillsOneTxt,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(context,
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: chipviewskillsOneItemModelObj.isSelected,
      backgroundColor: ColorConstant.whiteA700,
      selectedColor: Colors.transparent,
      shape: chipviewskillsOneItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.blueGray5001,
                width: getHorizontalSize(context,
                  1,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(context,
                  22,
                ),
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.blueGray50,
                width: getHorizontalSize(context,
                  1,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(context,
                  22,
                ),
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
