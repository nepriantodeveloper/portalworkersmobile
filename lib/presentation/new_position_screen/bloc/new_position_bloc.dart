import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stockworkers/presentation/new_position_screen/models/new_position_model.dart';
part 'new_position_event.dart';
part 'new_position_state.dart';

class NewPositionBloc extends Bloc<NewPositionEvent, NewPositionState> {
  NewPositionBloc(NewPositionState initialState) : super(initialState) {
    on<NewPositionInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
    on<ChangeDateEvent1>(_changeDate1);
  }

  _onInitialize(
    NewPositionInitialEvent event,
    Emitter<NewPositionState> emit,
  ) async {
    emit(state.copyWith(
        frameOneController: TextEditingController(),
        frameOneOneController: TextEditingController(),
        countryController: TextEditingController(),
        frameOneTwoController: TextEditingController()));
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<NewPositionState> emit,
  ) {
    emit(state.copyWith(
        newPositionModelObj: state.newPositionModelObj?.copyWith(
      smalllabelregulThreeTxt: event.date,
    )));
  }

  _changeDate1(
    ChangeDateEvent1 event,
    Emitter<NewPositionState> emit,
  ) {
    emit(state.copyWith(
        newPositionModelObj: state.newPositionModelObj?.copyWith(
      smalllabelregulFourTxt: event.date,
    )));
  }
}
