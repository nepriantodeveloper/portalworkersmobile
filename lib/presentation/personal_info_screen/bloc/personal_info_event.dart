// ignore_for_file: must_be_immutable

part of 'personal_info_bloc.dart';

@immutable
abstract class PersonalInfoEvent extends Equatable {}

class PersonalInfoInitialEvent extends PersonalInfoEvent {
  @override
  List<Object?> get props => [];
}

class FetchMeEvent extends PersonalInfoEvent {
  FetchMeEvent();

  @override
  List<Object?> get props => [];
}
