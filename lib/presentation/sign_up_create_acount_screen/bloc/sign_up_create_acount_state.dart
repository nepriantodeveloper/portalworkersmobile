// ignore_for_file: must_be_immutable

part of 'sign_up_create_acount_bloc.dart';

class SignUpCreateAcountState extends Equatable {
  SignUpCreateAcountState({
    this.frameOneController,
    this.signUpCreateAcountModelObj,
  });

  TextEditingController? frameOneController;

  SignUpCreateAcountModel? signUpCreateAcountModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        signUpCreateAcountModelObj,
      ];
  SignUpCreateAcountState copyWith({
    TextEditingController? frameOneController,
    SignUpCreateAcountModel? signUpCreateAcountModelObj,
  }) {
    return SignUpCreateAcountState(
      frameOneController: frameOneController ?? this.frameOneController,
      signUpCreateAcountModelObj:
          signUpCreateAcountModelObj ?? this.signUpCreateAcountModelObj,
    );
  }
}
