// ignore_for_file: must_be_immutable

part of 'apply_job_bloc.dart';

class ApplyJobState extends Equatable {
  ApplyJobState({this.applyJobModelObj});

  ApplyJobModel? applyJobModelObj;

  @override
  List<Object?> get props => [
        applyJobModelObj,
      ];
  ApplyJobState copyWith({ApplyJobModel? applyJobModelObj}) {
    return ApplyJobState(
      applyJobModelObj: applyJobModelObj ?? this.applyJobModelObj,
    );
  }
}
