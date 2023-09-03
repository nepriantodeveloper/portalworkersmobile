import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stock_workers/presentation/speciallization_screen/models/speciallization_model.dart';
part 'speciallization_event.dart';
part 'speciallization_state.dart';

class SpeciallizationBloc
    extends Bloc<SpeciallizationEvent, SpeciallizationState> {
  SpeciallizationBloc(SpeciallizationState initialState) : super(initialState) {
    on<SpeciallizationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpeciallizationInitialEvent event,
    Emitter<SpeciallizationState> emit,
  ) async {
    emit(state.copyWith(
        group163009Controller: TextEditingController(),
        group163010Controller: TextEditingController(),
        group163011Controller: TextEditingController(),
        group163012Controller: TextEditingController(),
        group163013Controller: TextEditingController(),
        group163014Controller: TextEditingController()));
  }
}
