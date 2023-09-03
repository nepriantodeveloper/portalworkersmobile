// ignore_for_file: must_be_immutable

part of 'add_new_education_bloc.dart';

class AddNewEducationState extends Equatable {
  AddNewEducationState({
    this.frameOneController,
    this.frameOneTwoController,
    this.frameOneThreeController,
    this.frameOneFourController,
    this.selectedDropDownValue,
    this.addNewEducationModelObj,
  });

  TextEditingController? frameOneController;

  TextEditingController? frameOneTwoController;

  TextEditingController? frameOneThreeController;

  TextEditingController? frameOneFourController;

  SelectionPopupModel? selectedDropDownValue;

  AddNewEducationModel? addNewEducationModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        frameOneTwoController,
        frameOneThreeController,
        frameOneFourController,
        selectedDropDownValue,
        addNewEducationModelObj,
      ];
  AddNewEducationState copyWith({
    TextEditingController? frameOneController,
    TextEditingController? frameOneTwoController,
    TextEditingController? frameOneThreeController,
    TextEditingController? frameOneFourController,
    SelectionPopupModel? selectedDropDownValue,
    AddNewEducationModel? addNewEducationModelObj,
  }) {
    return AddNewEducationState(
      frameOneController: frameOneController ?? this.frameOneController,
      frameOneTwoController:
          frameOneTwoController ?? this.frameOneTwoController,
      frameOneThreeController:
          frameOneThreeController ?? this.frameOneThreeController,
      frameOneFourController:
          frameOneFourController ?? this.frameOneFourController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      addNewEducationModelObj:
          addNewEducationModelObj ?? this.addNewEducationModelObj,
    );
  }
}
