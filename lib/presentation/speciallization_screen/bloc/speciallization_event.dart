// ignore_for_file: must_be_immutable

part of 'speciallization_bloc.dart';

@immutable
abstract class SpeciallizationEvent extends Equatable {}

class SpeciallizationInitialEvent extends SpeciallizationEvent {
  @override
  List<Object?> get props => [];
}
