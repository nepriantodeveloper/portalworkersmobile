import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slidermessage_item_model.dart';
import 'package:stock_workers/presentation/onboarding_two_screen/models/onboarding_two_model.dart';
part 'onboarding_two_event.dart';
part 'onboarding_two_state.dart';

class OnboardingTwoBloc extends Bloc<OnboardingTwoEvent, OnboardingTwoState> {
  OnboardingTwoBloc(OnboardingTwoState initialState) : super(initialState) {
    on<OnboardingTwoInitialEvent>(_onInitialize);
  }

  List<SlidermessageItemModel> fillSlidermessageItemList() {
    return List.generate(1, (index) => SlidermessageItemModel());
  }

  _onInitialize(
    OnboardingTwoInitialEvent event,
    Emitter<OnboardingTwoState> emit,
  ) async {
    emit(state.copyWith(silderIndex: 0));
    emit(state.copyWith(
        onboardingTwoModelObj: state.onboardingTwoModelObj
            ?.copyWith(slidermessageItemList: fillSlidermessageItemList())));
  }
}
