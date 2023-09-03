// ignore_for_file: must_be_immutable

part of 'onboarding_two_bloc.dart';

class OnboardingTwoState extends Equatable {
  OnboardingTwoState({
    this.silderIndex = 0,
    this.onboardingTwoModelObj,
  });

  OnboardingTwoModel? onboardingTwoModelObj;

  int silderIndex;

  @override
  List<Object?> get props => [
        silderIndex,
        onboardingTwoModelObj,
      ];
  OnboardingTwoState copyWith({
    int? silderIndex,
    OnboardingTwoModel? onboardingTwoModelObj,
  }) {
    return OnboardingTwoState(
      silderIndex: silderIndex ?? this.silderIndex,
      onboardingTwoModelObj:
          onboardingTwoModelObj ?? this.onboardingTwoModelObj,
    );
  }
}
