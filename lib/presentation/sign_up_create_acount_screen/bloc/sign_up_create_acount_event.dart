// ignore_for_file: must_be_immutable

part of 'sign_up_create_acount_bloc.dart';

@immutable
abstract class SignUpCreateAcountEvent extends Equatable {}

class SignUpCreateAcountInitialEvent extends SignUpCreateAcountEvent {
  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends SignUpCreateAcountEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}
