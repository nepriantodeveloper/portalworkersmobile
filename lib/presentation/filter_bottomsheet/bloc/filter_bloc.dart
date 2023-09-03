import '../models/chipviewjobs_one_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewjobs_one_item_model.dart';
import 'package:stock_workers/presentation/filter_bottomsheet/models/filter_model.dart';
part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(FilterState initialState) : super(initialState) {
    on<FilterInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    FilterInitialEvent event,
    Emitter<FilterState> emit,
  ) async {
    emit(state.copyWith(
        filterModelObj: state.filterModelObj?.copyWith(
            chipviewjobsOneItemList: fillChipviewjobsOneItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FilterState> emit,
  ) {
    List<ChipviewjobsOneItemModel> newList =
        List<ChipviewjobsOneItemModel>.from(
            state.filterModelObj!.chipviewjobsOneItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        filterModelObj:
            state.filterModelObj?.copyWith(chipviewjobsOneItemList: newList)));
  }

  List<ChipviewjobsOneItemModel> fillChipviewjobsOneItemList() {
    return List.generate(2, (index) => ChipviewjobsOneItemModel());
  }
}
