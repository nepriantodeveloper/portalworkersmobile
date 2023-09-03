import '../onboarding_one_screen/widgets/sliderthebestappfor_item_widget.dart';
import 'bloc/onboarding_one_bloc.dart';
import 'models/onboarding_one_model.dart';
import 'models/sliderthebestappfor_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stock_workers/core/app_export.dart';

class OnboardingOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingOneBloc>(
        create: (context) => OnboardingOneBloc(
            OnboardingOneState(onboardingOneModelObj: OnboardingOneModel()))
          ..add(OnboardingOneInitialEvent()),
        child: OnboardingOneScreen());
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
                        getPadding(left: 24, top: 18, right: 24, bottom: 18),
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
                                              getHorizontalSize(0.07)))),
                          Container(
                              height: getVerticalSize(678),
                              width: getHorizontalSize(327),
                              margin: getMargin(top: 13, bottom: 5),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage,
                                        height: getVerticalSize(361),
                                        width: getHorizontalSize(283),
                                        alignment: Alignment.topCenter),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(335),
                                            width: getHorizontalSize(327),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  BlocBuilder<OnboardingOneBloc,
                                                          OnboardingOneState>(
                                                      builder:
                                                          (context, state) {
                                                    return CarouselSlider
                                                        .builder(
                                                            options:
                                                                CarouselOptions(
                                                                    height:
                                                                        getVerticalSize(
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
                                                                    .onboardingOneModelObj
                                                                    ?.sliderthebestappforItemList
                                                                    .length ??
                                                                0,
                                                            itemBuilder:
                                                                (context, index,
                                                                    realIndex) {
                                                              SliderthebestappforItemModel
                                                                  model =
                                                                  state.onboardingOneModelObj
                                                                              ?.sliderthebestappforItemList[
                                                                          index] ??
                                                                      SliderthebestappforItemModel();
                                                              return SliderthebestappforItemWidget(
                                                                  model,
                                                                  onTapBtnNextvalue:
                                                                      () {
                                                                onTapBtnNextvalue(
                                                                    context);
                                                              });
                                                            });
                                                  }),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: BlocBuilder<
                                                              OnboardingOneBloc,
                                                              OnboardingOneState>(
                                                          builder:
                                                              (context, state) {
                                                        return Container(
                                                            height:
                                                                getVerticalSize(
                                                                    10),
                                                            margin: getMargin(
                                                                bottom: 112),
                                                            child: AnimatedSmoothIndicator(
                                                                activeIndex: state
                                                                    .silderIndex,
                                                                count: state
                                                                        .onboardingOneModelObj
                                                                        ?.sliderthebestappforItemList
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
                                                                        getVerticalSize(
                                                                            10),
                                                                    dotWidth:
                                                                        getHorizontalSize(
                                                                            10))));
                                                      }))
                                                ])))
                                  ]))
                        ])))));
  }

  onTapBtnNextvalue(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.onboardingTwoScreen);
  }

  onTapTxtMediumlabelmedi(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpCreateAcountScreen,
    );
  }
}
