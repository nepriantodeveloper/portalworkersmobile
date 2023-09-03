// ignore_for_file: must_be_immutable

part of 'select_a_country_bloc.dart';

class SelectACountryState extends Equatable {
  SelectACountryState({
    this.frameOneController,
    this.radioGroup = "",
    this.selectACountryModelObj,
  });

  TextEditingController? frameOneController;

  SelectACountryModel? selectACountryModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        frameOneController,
        radioGroup,
        selectACountryModelObj,
      ];
  SelectACountryState copyWith({
    TextEditingController? frameOneController,
    String? radioGroup,
    SelectACountryModel? selectACountryModelObj,
  }) {
    return SelectACountryState(
      frameOneController: frameOneController ?? this.frameOneController,
      radioGroup: radioGroup ?? this.radioGroup,
      selectACountryModelObj:
          selectACountryModelObj ?? this.selectACountryModelObj,
    );
  }
}
