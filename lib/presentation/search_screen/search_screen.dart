import '../search_screen/widgets/search_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/appbar_title.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkers/presentation/filter_bottomsheet/filter_bottomsheet.dart';

class SearchScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
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
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_find_jobs".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context,left: 24, right: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(context,top: 30),
                          padding: getPadding(context,
                              left: 16, top: 14, right: 16, bottom: 14),
                          decoration: AppDecoration.outlineIndigo50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSearch,
                                    height: getSize(context,18),
                                    width: getSize(context,18),
                                    margin: getMargin(context,top: 2, bottom: 2)),
                                Padding(
                                    padding: getPadding(context,left: 8, top: 2),
                                    child: Text("lbl_search".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansMedium16
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context,0.08)))),
                                Spacer(),
                                SizedBox(
                                    height: getVerticalSize(context,22),
                                    child: VerticalDivider(
                                        width: getHorizontalSize(context,1),
                                        thickness: getVerticalSize(context,1),
                                        color: ColorConstant.indigo50,
                                        indent: getHorizontalSize(context,2),
                                        endIndent: getHorizontalSize(context,2))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettingsGray900,
                                    height: getSize(context,18),
                                    width: getSize(context,18),
                                    margin:
                                        getMargin(context,left: 7, top: 2, bottom: 2),
                                    onTap: () {
                                      onTapImgSettings(context);
                                    })
                              ])),
                      Padding(
                          padding: getPadding(context,top: 24),
                          child: BlocSelector<SearchBloc, SearchState,
                                  SearchModel?>(
                              selector: (state) => state.searchModelObj,
                              builder: (context, searchModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(context,12));
                                    },
                                    itemCount:
                                        searchModelObj?.searchItemList.length ??
                                            0,
                                    itemBuilder: (context, index) {
                                      SearchItemModel model = searchModelObj
                                              ?.searchItemList[index] ??
                                          SearchItemModel();
                                      return SearchItemWidget(model,
                                          onTapRowlightbulb: () {
                                        onTapRowlightbulb(context);
                                      });
                                    });
                              }))
                    ]))));
  }

  onTapRowlightbulb(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.savedDetailJobScreen);
  }

  onTapImgSettings(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => FilterBottomsheet.builder(context),
        isScrollControlled: true);
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
