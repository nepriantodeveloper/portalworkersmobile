// ignore_for_file: must_be_immutable

part of 'sign_up_complete_account_bloc.dart';

class SignUpCompleteAccountState extends Equatable {
  SignUpCompleteAccountState({
    this.frameOneController,
    this.frameOneOneController,
    this.frameOneTwoController,
    this.signUpCompleteAccountModelObj,
  });

  TextEditingController? frameOneController;

  TextEditingController? frameOneOneController;

  TextEditingController? frameOneTwoController;

  SignUpCompleteAccountModel? signUpCompleteAccountModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        frameOneOneController,
        frameOneTwoController,
        signUpCompleteAccountModelObj,
      ];
  SignUpCompleteAccountState copyWith({
    TextEditingController? frameOneController,
    TextEditingController? frameOneOneController,
    TextEditingController? frameOneTwoController,
    SignUpCompleteAccountModel? signUpCompleteAccountModelObj,
  }) {
    return SignUpCompleteAccountState(
      frameOneController: frameOneController ?? this.frameOneController,
      frameOneOneController:
          frameOneOneController ?? this.frameOneOneController,
      frameOneTwoController:
          frameOneTwoController ?? this.frameOneTwoController,
      signUpCompleteAccountModelObj:
          signUpCompleteAccountModelObj ?? this.signUpCompleteAccountModelObj,
    );
  }
}
