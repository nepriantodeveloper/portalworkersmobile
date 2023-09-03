import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listclock_item_model.dart';
import '../models/listdescription_item_model.dart';
import 'package:stock_workers/presentation/job_details_screen/models/job_details_model.dart';
part 'job_details_event.dart';
part 'job_details_state.dart';

class JobDetailsBloc extends Bloc<JobDetailsEvent, JobDetailsState> {
  JobDetailsBloc(JobDetailsState initialState) : super(initialState) {
    on<JobDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    JobDetailsInitialEvent event,
    Emitter<JobDetailsState> emit,
  ) async {
    emit(state.copyWith(
        jobDetailsModelObj: state.jobDetailsModelObj?.copyWith(
            listclockItemList: fillListclockItemList(),
            listdescriptionItemList: fillListdescriptionItemList())));
  }

  List<ListclockItemModel> fillListclockItemList() {
    return List.generate(3, (index) => ListclockItemModel());
  }

  List<ListdescriptionItemModel> fillListdescriptionItemList() {
    return List.generate(3, (index) => ListdescriptionItemModel());
  }
}
