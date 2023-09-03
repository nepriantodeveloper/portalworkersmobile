import '../home_page/widgets/listgroup_item_widget.dart';
import '../home_page/widgets/listuser_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/listgroup_item_model.dart';
import 'models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stockworkers/core/app_export.dart';
import 'package:stockworkers/widgets/app_bar/appbar_image.dart';
import 'package:stockworkers/widgets/app_bar/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(context,50),
                leadingWidth: 74,
                leading: CustomImageView(
                    imagePath: ImageConstant.imgImage50x501,
                    height: getSize(context,50),
                    width: getSize(context,50),
                    radius: BorderRadius.circular(getHorizontalSize(context,25)),
                    margin: getMargin(context,left: 24)),
                title: Padding(
                    padding: getPadding(context,left: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_hi_welcome_bac".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(context,0.07)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(context,top: 9, right: 33),
                                  child: Text("msg_find_your_dream".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPlusJakartaSansMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context,0.06)))))
                        ])),
                actions: [
                  AppbarImage(
                      height: getSize(context,24),
                      width: getSize(context,24),
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          getMargin(context,left: 24, top: 13, right: 24, bottom: 13),
                      onTap: () {
                        onTapLightbulb(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapRowsearch(context);
                              },
                              child: Container(
                                  margin:
                                      getMargin(context,left: 24, top: 30, right: 24),
                                  padding: getPadding(context,
                                      left: 16, top: 14, right: 16, bottom: 14),
                                  decoration: AppDecoration.outlineIndigo50(context)
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder24(context)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgSearch,
                                            height: getSize(context,18),
                                            width: getSize(context,18),
                                            margin:
                                                getMargin(context,top: 2, bottom: 2)),
                                        Padding(
                                            padding:
                                                getPadding(context,left: 8, top: 2),
                                            child: Text("lbl_search".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(context,
                                                                0.08)))),
                                        Spacer(),
                                        SizedBox(
                                            height: getVerticalSize(context,22),
                                            child: VerticalDivider(
                                                width: getHorizontalSize(context,1),
                                                thickness: getVerticalSize(context,1),
                                                color: ColorConstant.indigo50,
                                                indent: getHorizontalSize(context,2),
                                                endIndent:
                                                    getHorizontalSize(context,2))),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSettingsGray900,
                                            height: getSize(context,18),
                                            width: getSize(context,18),
                                            margin: getMargin(context,
                                                left: 7, top: 2, bottom: 2))
                                      ])))),
                      Padding(
                          padding: getPadding(context,left: 24, top: 25),
                          child: Text("lbl_recommendation".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansSemiBold18
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context,0.09)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(context,193),
                              child: BlocSelector<HomeBloc, HomeState,
                                      HomeModel?>(
                                  selector: (state) => state.homeModelObj,
                                  builder: (context, homeModelObj) {
                                    return ListView.separated(
                                        padding: getPadding(context,left: 24, top: 17),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(context,16));
                                        },
                                        itemCount: homeModelObj
                                                ?.listuserItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          ListuserItemModel model = homeModelObj
                                                  ?.listuserItemList[index] ??
                                              ListuserItemModel();
                                          return ListuserItemWidget(model);
                                        });
                                  }))),
                      Padding(
                          padding: getPadding(context,left: 24, top: 22),
                          child: Text("lbl_recent_jobs".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16.copyWith(
                                  letterSpacing: getHorizontalSize(context,0.08)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(context,left: 24, top: 16, right: 24),
                              child:
                                  BlocSelector<HomeBloc, HomeState, HomeModel?>(
                                      selector: (state) => state.homeModelObj,
                                      builder: (context, homeModelObj) {
                                        return ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(context,16));
                                            },
                                            itemCount: homeModelObj
                                                    ?.listgroupItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              ListgroupItemModel model =
                                                  homeModelObj?.listgroupItemList[
                                                          index] ??
                                                      ListgroupItemModel();
                                              return ListgroupItemWidget(model,
                                                  onTapColumngroup: () {
                                                onTapColumngroup(context);
                                              });
                                            });
                                      })))
                    ]))));
  }

  onTapColumngroup(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.jobDetailsScreen);
  }

  onTapRowsearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }

  onTapLightbulb(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsGeneralScreen,
    );
  }
}
