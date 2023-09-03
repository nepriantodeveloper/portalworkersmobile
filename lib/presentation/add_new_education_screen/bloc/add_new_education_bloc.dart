import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stock_workers/presentation/add_new_education_screen/models/add_new_education_model.dart';
part 'add_new_education_event.dart';
part 'add_new_education_state.dart';

class AddNewEducationBloc
    extends Bloc<AddNewEducationEvent, AddNewEducationState> {
  AddNewEducationBloc(AddNewEducationState initialState) : super(initialState) {
    on<AddNewEducationInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDateEvent>(_changeDate);
    on<ChangeDateEvent1>(_changeDate1);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AddNewEducationState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  _onInitialize(
    AddNewEducationInitialEvent event,
    Emitter<AddNewEducationState> emit,
  ) async {
    emit(state.copyWith(
        frameOneController: TextEditingController(),
        frameOneTwoController: TextEditingController(),
        frameOneThreeController: TextEditingController(),
        frameOneFourController: TextEditingController()));
    emit(state.copyWith(
        addNewEducationModelObj: state.addNewEducationModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<AddNewEducationState> emit,
  ) {
    emit(state.copyWith(
        addNewEducationModelObj: state.addNewEducationModelObj?.copyWith(
      smalllabelregulTwoTxt: event.date,
    )));
  }

  _changeDate1(
    ChangeDateEvent1 event,
    Emitter<AddNewEducationState> emit,
  ) {
    emit(state.copyWith(
        addNewEducationModelObj: state.addNewEducationModelObj?.copyWith(
      smalllabelregulThreeTxt: event.date,
    )));
  }
}
