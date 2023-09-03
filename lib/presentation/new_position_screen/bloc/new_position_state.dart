// ignore_for_file: must_be_immutable

part of 'new_position_bloc.dart';

class NewPositionState extends Equatable {
  NewPositionState({
    this.frameOneController,
    this.frameOneOneController,
    this.countryController,
    this.frameOneTwoController,
    this.newPositionModelObj,
  });

  TextEditingController? frameOneController;

  TextEditingController? frameOneOneController;

  TextEditingController? countryController;

  TextEditingController? frameOneTwoController;

  NewPositionModel? newPositionModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        frameOneOneController,
        countryController,
        frameOneTwoController,
        newPositionModelObj,
      ];
  NewPositionState copyWith({
    TextEditingController? frameOneController,
    TextEditingController? frameOneOneController,
    TextEditingController? countryController,
    TextEditingController? frameOneTwoController,
    NewPositionModel? newPositionModelObj,
  }) {
    return NewPositionState(
      frameOneController: frameOneController ?? this.frameOneController,
      frameOneOneController:
          frameOneOneController ?? this.frameOneOneController,
      countryController: countryController ?? this.countryController,
      frameOneTwoController:
          frameOneTwoController ?? this.frameOneTwoController,
      newPositionModelObj: newPositionModelObj ?? this.newPositionModelObj,
    );
  }
}
