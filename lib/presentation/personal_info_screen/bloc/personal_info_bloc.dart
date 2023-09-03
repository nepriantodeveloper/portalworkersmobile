import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stock_workers/presentation/personal_info_screen/models/personal_info_model.dart';
import 'package:stock_workers/data/models/me/get_me_resp.dart';
import 'dart:async';
import 'package:stock_workers/data/repository/repository.dart';
part 'personal_info_event.dart';
part 'personal_info_state.dart';

class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  PersonalInfoBloc(PersonalInfoState initialState) : super(initialState) {
    on<PersonalInfoInitialEvent>(_onInitialize);
    on<FetchMeEvent>(_callFetchMe);
  }

  final _repository = Repository();

  var getMeResp = GetMeResp();

  _onInitialize(
    PersonalInfoInitialEvent event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(state.copyWith(
        frameOneController: TextEditingController(),
        frameOneOneController: TextEditingController(),
        emailOneController: TextEditingController(),
        mobileNoController: TextEditingController(),
        frameOneTwoController: TextEditingController()));
    add(
      FetchMeEvent(),
    );
  }

  FutureOr<void> _callFetchMe(
    FetchMeEvent event,
    Emitter<PersonalInfoState> emit,
  ) async {
    await _repository.fetchMe(
      headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',
      },
    ).then((value) async {
      getMeResp = value;
      _onFetchMeSuccess(value, emit);
    }).onError((error, stackTrace) {
      //implement error call
      _onFetchMeError();
    });
  }

  void _onFetchMeSuccess(
    GetMeResp resp,
    Emitter<PersonalInfoState> emit,
  ) {
    emit(
      state.copyWith(
        personalInfoModelObj: state.personalInfoModelObj?.copyWith(),
        emailOneController:
            TextEditingController(text: resp.data!.email!.toString()),
        frameOneController:
            TextEditingController(text: resp.data!.name!.toString()),
      ),
    );
  }

  void _onFetchMeError() {
    //implement error method body...
  }
}
