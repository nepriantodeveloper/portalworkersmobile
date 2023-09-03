// ignore_for_file: must_be_immutable

part of 'onboarding_three_bloc.dart';

class OnboardingThreeState extends Equatable {
  OnboardingThreeState({
    this.silderIndex = 0,
    this.onboardingThreeModelObj,
  });

  OnboardingThreeModel? onboardingThreeModelObj;

  int silderIndex;

  @override
  List<Object?> get props => [
        silderIndex,
        onboardingThreeModelObj,
      ];
  OnboardingThreeState copyWith({
    int? silderIndex,
    OnboardingThreeModel? onboardingThreeModelObj,
  }) {
    return OnboardingThreeState(
      silderIndex: silderIndex ?? this.silderIndex,
      onboardingThreeModelObj:
          onboardingThreeModelObj ?? this.onboardingThreeModelObj,
    );
  }
}
