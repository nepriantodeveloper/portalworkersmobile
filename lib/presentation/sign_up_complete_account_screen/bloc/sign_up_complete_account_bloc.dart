import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stock_workers/presentation/sign_up_complete_account_screen/models/sign_up_complete_account_model.dart';
import 'package:stock_workers/data/models/register/post_register_resp.dart';
import 'package:stock_workers/data/models/register/post_register_req.dart';
import 'dart:async';
import 'package:stock_workers/data/repository/repository.dart';
import 'package:stock_workers/core/constants/user.dart';
import 'package:stock_workers/core/constants/role.dart';
part 'sign_up_complete_account_event.dart';
part 'sign_up_complete_account_state.dart';

class SignUpCompleteAccountBloc
    extends Bloc<SignUpCompleteAccountEvent, SignUpCompleteAccountState> {
  SignUpCompleteAccountBloc(SignUpCompleteAccountState initialState)
      : super(initialState) {
    on<SignUpCompleteAccountInitialEvent>(_onInitialize);
    on<CreateRegisterEvent>(_callCreateRegister);
  }

  final _repository = Repository();

  var postRegisterResp = PostRegisterResp();

  _onInitialize(
    SignUpCompleteAccountInitialEvent event,
    Emitter<SignUpCompleteAccountState> emit,
  ) async {
    emit(state.copyWith(
        frameOneController: TextEditingController(),
        frameOneOneController: TextEditingController(),
        frameOneTwoController: TextEditingController()));
  }

  FutureOr<void> _callCreateRegister(
    CreateRegisterEvent event,
    Emitter<SignUpCompleteAccountState> emit,
  ) async {
    var postRegisterReq = PostRegisterReq(
      username: state.frameOneOneController?.text,
      password: state.frameOneTwoController?.text,
      email: User.email,
      name: state.frameOneController?.text,
      role: Role.user,
    );
    await _repository.createRegister(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postRegisterReq.toJson(),
    ).then((value) async {
      postRegisterResp = value;
      _onCreateRegisterSuccess(value, emit);
      event.onCreateRegisterEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateRegisterError();
      event.onCreateRegisterEventError.call();
    });
  }

  void _onCreateRegisterSuccess(
    PostRegisterResp resp,
    Emitter<SignUpCompleteAccountState> emit,
  ) {
    PrefUtils().setId(resp.data!.id!.toString());
    emit(
      state.copyWith(
        signUpCompleteAccountModelObj:
            state.signUpCompleteAccountModelObj?.copyWith(),
      ),
    );
  }

  void _onCreateRegisterError() {
    //implement error method body...
  }
}
