// ignore_for_file: must_be_immutable

part of 'speciallization_bloc.dart';

class SpeciallizationState extends Equatable {
  SpeciallizationState({
    this.group163009Controller,
    this.group163010Controller,
    this.group163011Controller,
    this.group163012Controller,
    this.group163013Controller,
    this.group163014Controller,
    this.speciallizationModelObj,
  });

  TextEditingController? group163009Controller;

  TextEditingController? group163010Controller;

  TextEditingController? group163011Controller;

  TextEditingController? group163012Controller;

  TextEditingController? group163013Controller;

  TextEditingController? group163014Controller;

  SpeciallizationModel? speciallizationModelObj;

  @override
  List<Object?> get props => [
        group163009Controller,
        group163010Controller,
        group163011Controller,
        group163012Controller,
        group163013Controller,
        group163014Controller,
        speciallizationModelObj,
      ];
  SpeciallizationState copyWith({
    TextEditingController? group163009Controller,
    TextEditingController? group163010Controller,
    TextEditingController? group163011Controller,
    TextEditingController? group163012Controller,
    TextEditingController? group163013Controller,
    TextEditingController? group163014Controller,
    SpeciallizationModel? speciallizationModelObj,
  }) {
    return SpeciallizationState(
      group163009Controller:
          group163009Controller ?? this.group163009Controller,
      group163010Controller:
          group163010Controller ?? this.group163010Controller,
      group163011Controller:
          group163011Controller ?? this.group163011Controller,
      group163012Controller:
          group163012Controller ?? this.group163012Controller,
      group163013Controller:
          group163013Controller ?? this.group163013Controller,
      group163014Controller:
          group163014Controller ?? this.group163014Controller,
      speciallizationModelObj:
          speciallizationModelObj ?? this.speciallizationModelObj,
    );
  }
}
