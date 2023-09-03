import '../models/chipviewskills_one_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewskills_one_item_model.dart';
import '../models/profile_item_model.dart';
import 'package:stock_workers/presentation/profile_page/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ProfileState> emit,
  ) {
    List<ChipviewskillsOneItemModel> newList =
        List<ChipviewskillsOneItemModel>.from(
            state.profileModelObj!.chipviewskillsOneItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        profileModelObj: state.profileModelObj
            ?.copyWith(chipviewskillsOneItemList: newList)));
  }

  List<ChipviewskillsOneItemModel> fillChipviewskillsOneItemList() {
    return List.generate(8, (index) => ChipviewskillsOneItemModel());
  }

  List<ProfileItemModel> fillProfileItemList() {
    return List.generate(3, (index) => ProfileItemModel());
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(radioGroup: ""));
    emit(state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
            chipviewskillsOneItemList: fillChipviewskillsOneItemList(),
            profileItemList: fillProfileItemList())));
  }
}
