// ignore_for_file: must_be_immutable

part of 'new_position_bloc.dart';

@immutable
abstract class NewPositionEvent extends Equatable {}

class NewPositionInitialEvent extends NewPositionEvent {
  @override
  List<Object?> get props => [];
}

///event for change date
class ChangeDateEvent extends NewPositionEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}

///event for change date
class ChangeDateEvent1 extends NewPositionEvent {
  ChangeDateEvent1({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}
