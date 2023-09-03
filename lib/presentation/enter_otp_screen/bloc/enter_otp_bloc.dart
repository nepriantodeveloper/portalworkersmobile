import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stock_workers/presentation/enter_otp_screen/models/enter_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'enter_otp_event.dart';
part 'enter_otp_state.dart';

class EnterOtpBloc extends Bloc<EnterOtpEvent, EnterOtpState>
    with CodeAutoFill {
  EnterOtpBloc(EnterOtpState initialState) : super(initialState) {
    on<EnterOtpInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<EnterOtpState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    EnterOtpInitialEvent event,
    Emitter<EnterOtpState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
