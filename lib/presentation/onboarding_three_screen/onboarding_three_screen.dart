import '../onboarding_three_screen/widgets/sliderapplicationsurely_item_widget.dart';
import 'bloc/onboarding_three_bloc.dart';
import 'models/onboarding_three_model.dart';
import 'models/sliderapplicationsurely_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stockworkers/core/app_export.dart';

class OnboardingThreeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingThreeBloc>(
        create: (context) => OnboardingThreeBloc(OnboardingThreeState(
            onboardingThreeModelObj: OnboardingThreeModel()))
          ..add(OnboardingThreeInitialEvent()),
        child: OnboardingThreeScreen());
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
                        getPadding(context,left: 24, top: 29, right: 24, bottom: 29),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(context,699),
                              width: getHorizontalSize(context,327),
                              margin: getMargin(context,bottom: 5),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage422x313,
                                        height: getVerticalSize(context,422),
                                        width: getHorizontalSize(context,313),
                                        alignment: Alignment.topCenter),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(context,367),
                                            width: getHorizontalSize(context,327),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  BlocBuilder<
                                                          OnboardingThreeBloc,
                                                          OnboardingThreeState>(
                                                      builder:
                                                          (context, state) {
                                                    return CarouselSlider
                                                        .builder(
                                                            options:
                                                                CarouselOptions(
                                                                    height:
                                                                        getVerticalSize(context,
                                                                            367),
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
                                                                    .onboardingThreeModelObj
                                                                    ?.sliderapplicationsurelyItemList
                                                                    .length ??
                                                                0,
                                                            itemBuilder:
                                                                (context, index,
                                                                    realIndex) {
                                                              SliderapplicationsurelyItemModel
                                                                  model =
                                                                  state.onboardingThreeModelObj
                                                                              ?.sliderapplicationsurelyItemList[
                                                                          index] ??
                                                                      SliderapplicationsurelyItemModel();
                                                              return SliderapplicationsurelyItemWidget(
                                                                  model,
                                                                  onTapBtnGetStarted:
                                                                      () {
                                                                onTapBtnGetStarted(
                                                                    context);
                                                              });
                                                            });
                                                  }),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: BlocBuilder<
                                                              OnboardingThreeBloc,
                                                              OnboardingThreeState>(
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
                                                                        .onboardingThreeModelObj
                                                                        ?.sliderapplicationsurelyItemList
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

  onTapBtnGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpCreateAcountScreen,
    );
  }
}
