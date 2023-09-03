import '../onboarding_two_screen/widgets/slidermessage_item_widget.dart';
import 'bloc/onboarding_two_bloc.dart';
import 'models/onboarding_two_model.dart';
import 'models/slidermessage_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stockworkers/core/app_export.dart';

class OnboardingTwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
        create: (context) => OnboardingTwoBloc(
            OnboardingTwoState(onboardingTwoModelObj: OnboardingTwoModel()))
          ..add(OnboardingTwoInitialEvent()),
        child: OnboardingTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnboardingone),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(context,left: 24, top: 18, right: 24, bottom: 18),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                onTapTxtMediumlabelmedi(context);
                              },
                              child: Text("lbl_skip".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansSemiBold14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(context,0.07)))),
                          Container(
                              height: getVerticalSize(context,672),
                              width: getHorizontalSize(context,327),
                              margin: getMargin(context,top: 19, bottom: 5),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage369x306,
                                        height: getVerticalSize(context,369),
                                        width: getHorizontalSize(context,306),
                                        alignment: Alignment.topCenter),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(context,335),
                                            width: getHorizontalSize(context,327),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  BlocBuilder<OnboardingTwoBloc,
                                                          OnboardingTwoState>(
                                                      builder:
                                                          (context, state) {
                                                    return CarouselSlider
                                                        .builder(
                                                            options:
                                                                CarouselOptions(
                                                                    height:
                                                                        getVerticalSize(context,
                                                                            335),
                                                                    initialPage:
                                                                        0,
                                                                    autoPlay:
                                                                        true,
                                                                    viewportFraction:
                                                                        1.0,
                                                                    enableInfiniteScroll:
                                                                        false,
                                                                    scrollDirection:
                                                                        Axis
                                                                            .horizontal,
                                                                    onPageChanged:
                                                                        (index,
                                                                            reason) {
                                                                      state.silderIndex =
                                                                          index;
                                                                    }),
                                                            itemCount: state
                                                                    .onboardingTwoModelObj
                                                                    ?.slidermessageItemList
                                                                    .length ??
                                                                0,
                                                            itemBuilder:
                                                                (context, index,
                                                                    realIndex) {
                                                              SlidermessageItemModel
                                                                  model =
                                                                  state.onboardingTwoModelObj
                                                                              ?.slidermessageItemList[
                                                                          index] ??
                                                                      SlidermessageItemModel();
                                                              return SlidermessageItemWidget(
                                                                  model,
                                                                  onTapBtnNextstep:
                                                                      () {
                                                                onTapBtnNextstep(
                                                                    context);
                                                              });
                                                            });
                                                  }),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: BlocBuilder<
                                                              OnboardingTwoBloc,
                                                              OnboardingTwoState>(
                                                          builder:
                                                              (context, state) {
                                                        return Container(
                                                            height:
                                                                getVerticalSize(context,
                                                                    10),
                                                            margin: getMargin(context,
                                                                bottom: 112),
                                                            child: AnimatedSmoothIndicator(
                                                                activeIndex: state
                                                                    .silderIndex,
                                                                count: state
                                                                        .onboardingTwoModelObj
                                                                        ?.slidermessageItemList
                                                                        .length ??
                                                                    0,
                                                                axisDirection: Axis
                                                                    .horizontal,
                                                                effect: ScrollingDotsEffect(
                                                                    spacing: 12,
                                                                    activeDotColor:
                                                                        ColorConstant
                                                                            .gray900,
                                                                    dotColor:
                                                                        ColorConstant
                                                                            .gray90068,
                                                                    dotHeight:
                                                                        getVerticalSize(context,
                                                                            10),
                                                                    dotWidth:
                                                                        getHorizontalSize(context,
                                                                            10))));
                                                      }))
                                                ])))
                                  ]))
                        ])))));
  }

  onTapBtnNextstep(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.onboardingThreeScreen);
  }

  onTapTxtMediumlabelmedi(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpCreateAcountScreen,
    );
  }
}
