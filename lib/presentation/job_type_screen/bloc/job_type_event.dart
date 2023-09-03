// ignore_for_file: must_be_immutable

part of 'job_type_bloc.dart';

@immutable
abstract class JobTypeEvent extends Equatable {}

class JobTypeInitialEvent extends JobTypeEvent {
  @override
  List<Object?> get props => [];
}
