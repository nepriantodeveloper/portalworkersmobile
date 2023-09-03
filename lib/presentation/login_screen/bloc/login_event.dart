// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class LoginInitialEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends LoginEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}
