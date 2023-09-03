// ignore_for_file: must_be_immutable

part of 'enter_otp_bloc.dart';

@immutable
abstract class EnterOtpEvent extends Equatable {}

class EnterOtpInitialEvent extends EnterOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends EnterOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
