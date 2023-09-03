import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderthebestappfor_item_model.dart';
import 'package:stock_workers/presentation/onboarding_one_screen/models/onboarding_one_model.dart';
part 'onboarding_one_event.dart';
part 'onboarding_one_state.dart';

class OnboardingOneBloc extends Bloc<OnboardingOneEvent, OnboardingOneState> {
  OnboardingOneBloc(OnboardingOneState initialState) : super(initialState) {
    on<OnboardingOneInitialEvent>(_onInitialize);
  }

  List<SliderthebestappforItemModel> fillSliderthebestappforItemList() {
    return List.generate(1, (index) => SliderthebestappforItemModel());
  }

  _onInitialize(
    OnboardingOneInitialEvent event,
    Emitter<OnboardingOneState> emit,
  ) async {
    emit(state.copyWith(silderIndex: 0));
    emit(state.copyWith(
        onboardingOneModelObj: state.onboardingOneModelObj?.copyWith(
            sliderthebestappforItemList: fillSliderthebestappforItemList())));
  }
}
