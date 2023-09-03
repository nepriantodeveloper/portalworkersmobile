import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stock_workers/presentation/sign_up_create_acount_screen/models/sign_up_create_acount_model.dart';
part 'sign_up_create_acount_event.dart';
part 'sign_up_create_acount_state.dart';

class SignUpCreateAcountBloc
    extends Bloc<SignUpCreateAcountEvent, SignUpCreateAcountState> {
  SignUpCreateAcountBloc(SignUpCreateAcountState initialState)
      : super(initialState) {
    on<SignUpCreateAcountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpCreateAcountInitialEvent event,
    Emitter<SignUpCreateAcountState> emit,
  ) async {
    emit(state.copyWith(frameOneController: TextEditingController()));
  }
}
