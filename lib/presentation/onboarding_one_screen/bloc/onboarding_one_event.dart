// ignore_for_file: must_be_immutable

part of 'onboarding_one_bloc.dart';

@immutable
abstract class OnboardingOneEvent extends Equatable {}

class OnboardingOneInitialEvent extends OnboardingOneEvent {
  @override
  List<Object?> get props => [];
}
