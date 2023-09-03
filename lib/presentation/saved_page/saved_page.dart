import '../saved_page/widgets/saved_item_widget.dart';
import 'bloc/saved_bloc.dart';
import 'models/saved_item_model.dart';
import 'models/saved_model.dart';
import 'package:flutter/material.dart';
import 'package:stock_workers/core/app_export.dart';
import 'package:stock_workers/widgets/app_bar/appbar_image.dart';
import 'package:stock_workers/widgets/app_bar/appbar_title.dart';
import 'package:stock_workers/widgets/app_bar/custom_app_bar.dart';

class SavedPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SavedBloc>(
        create: (context) => SavedBloc(SavedState(savedModelObj: SavedModel()))
          ..add(SavedInitialEvent()),
        child: SavedPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(context,50),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context,24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context,left: 24, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_saved".tr)),
            body: Padding(
                padding: getPadding(context,left: 24, top: 30, right: 24),
                child: BlocSelector<SavedBloc, SavedState, SavedModel?>(
                    selector: (state) => state.savedModelObj,
                    builder: (context, savedModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(context,12));
                          },
                          itemCount: savedModelObj?.savedItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            SavedItemModel model =
                                savedModelObj?.savedItemList[index] ??
                                    SavedItemModel();
                            return SavedItemWidget(model,
                                onTapSaveJobDetails: () {
                              onTapSaveJobDetails(context);
                            });
                          });
                    }))));
  }

  onTapSaveJobDetails(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.savedDetailJobScreen);
  }

  onTapArrowleft5(BuildContext context) {
    NavigatorService.goBack();
  }
}
