import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stockworkers/presentation/job_type_screen/models/job_type_model.dart';
part 'job_type_event.dart';
part 'job_type_state.dart';

class JobTypeBloc extends Bloc<JobTypeEvent, JobTypeState> {
  JobTypeBloc(JobTypeState initialState) : super(initialState) {
    on<JobTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    JobTypeInitialEvent event,
    Emitter<JobTypeState> emit,
  ) async {}
}
