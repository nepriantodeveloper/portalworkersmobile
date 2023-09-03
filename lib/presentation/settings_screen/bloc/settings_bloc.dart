import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stockworkers/widgets/custom_bottom_bar.dart';
import 'package:stockworkers/presentation/settings_screen/models/settings_model.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(SettingsState initialState) : super(initialState) {
    on<SettingsInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SettingsState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _onInitialize(
    SettingsInitialEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false));
  }
}
