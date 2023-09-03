import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listuser2_item_model.dart';
import 'package:stock_workers/presentation/experience_setting_screen/models/experience_setting_model.dart';
part 'experience_setting_event.dart';
part 'experience_setting_state.dart';

class ExperienceSettingBloc
    extends Bloc<ExperienceSettingEvent, ExperienceSettingState> {
  ExperienceSettingBloc(ExperienceSettingState initialState)
      : super(initialState) {
    on<ExperienceSettingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExperienceSettingInitialEvent event,
    Emitter<ExperienceSettingState> emit,
  ) async {
    emit(state.copyWith(
        experienceSettingModelObj: state.experienceSettingModelObj
            ?.copyWith(listuser2ItemList: fillListuser2ItemList())));
  }

  List<Listuser2ItemModel> fillListuser2ItemList() {
    return List.generate(3, (index) => Listuser2ItemModel());
  }
}
