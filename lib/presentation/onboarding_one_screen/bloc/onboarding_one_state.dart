// ignore_for_file: must_be_immutable

part of 'onboarding_one_bloc.dart';

class OnboardingOneState extends Equatable {
  OnboardingOneState({
    this.silderIndex = 0,
    this.onboardingOneModelObj,
  });

  OnboardingOneModel? onboardingOneModelObj;

  int silderIndex;

  @override
  List<Object?> get props => [
        silderIndex,
        onboardingOneModelObj,
      ];
  OnboardingOneState copyWith({
    int? silderIndex,
    OnboardingOneModel? onboardingOneModelObj,
  }) {
    return OnboardingOneState(
      silderIndex: silderIndex ?? this.silderIndex,
      onboardingOneModelObj:
          onboardingOneModelObj ?? this.onboardingOneModelObj,
    );
  }
}
