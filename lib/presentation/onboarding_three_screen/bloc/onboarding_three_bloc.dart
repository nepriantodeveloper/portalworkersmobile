import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderapplicationsurely_item_model.dart';
import 'package:stock_workers/presentation/onboarding_three_screen/models/onboarding_three_model.dart';
part 'onboarding_three_event.dart';
part 'onboarding_three_state.dart';

class OnboardingThreeBloc
    extends Bloc<OnboardingThreeEvent, OnboardingThreeState> {
  OnboardingThreeBloc(OnboardingThreeState initialState) : super(initialState) {
    on<OnboardingThreeInitialEvent>(_onInitialize);
  }

  List<SliderapplicationsurelyItemModel> fillSliderapplicationsurelyItemList() {
    return List.generate(1, (index) => SliderapplicationsurelyItemModel());
  }

  _onInitialize(
    OnboardingThreeInitialEvent event,
    Emitter<OnboardingThreeState> emit,
  ) async {
    emit(state.copyWith(silderIndex: 0));
    emit(state.copyWith(
        onboardingThreeModelObj: state.onboardingThreeModelObj?.copyWith(
            sliderapplicationsurelyItemList:
                fillSliderapplicationsurelyItemList())));
  }
}
