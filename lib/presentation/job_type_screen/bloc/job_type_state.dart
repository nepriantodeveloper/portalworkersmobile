// ignore_for_file: must_be_immutable

part of 'job_type_bloc.dart';

class JobTypeState extends Equatable {
  JobTypeState({this.jobTypeModelObj});

  JobTypeModel? jobTypeModelObj;

  @override
  List<Object?> get props => [
        jobTypeModelObj,
      ];
  JobTypeState copyWith({JobTypeModel? jobTypeModelObj}) {
    return JobTypeState(
      jobTypeModelObj: jobTypeModelObj ?? this.jobTypeModelObj,
    );
  }
}
