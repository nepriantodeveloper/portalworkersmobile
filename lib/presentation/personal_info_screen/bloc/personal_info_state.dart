// ignore_for_file: must_be_immutable

part of 'personal_info_bloc.dart';

class PersonalInfoState extends Equatable {
  PersonalInfoState({
    this.frameOneController,
    this.frameOneOneController,
    this.emailOneController,
    this.mobileNoController,
    this.frameOneTwoController,
    this.personalInfoModelObj,
  });

  TextEditingController? frameOneController;

  TextEditingController? frameOneOneController;

  TextEditingController? emailOneController;

  TextEditingController? mobileNoController;

  TextEditingController? frameOneTwoController;

  PersonalInfoModel? personalInfoModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        frameOneOneController,
        emailOneController,
        mobileNoController,
        frameOneTwoController,
        personalInfoModelObj,
      ];
  PersonalInfoState copyWith({
    TextEditingController? frameOneController,
    TextEditingController? frameOneOneController,
    TextEditingController? emailOneController,
    TextEditingController? mobileNoController,
    TextEditingController? frameOneTwoController,
    PersonalInfoModel? personalInfoModelObj,
  }) {
    return PersonalInfoState(
      frameOneController: frameOneController ?? this.frameOneController,
      frameOneOneController:
          frameOneOneController ?? this.frameOneOneController,
      emailOneController: emailOneController ?? this.emailOneController,
      mobileNoController: mobileNoController ?? this.mobileNoController,
      frameOneTwoController:
          frameOneTwoController ?? this.frameOneTwoController,
      personalInfoModelObj: personalInfoModelObj ?? this.personalInfoModelObj,
    );
  }
}
