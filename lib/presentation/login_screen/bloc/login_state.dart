// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

class LoginState extends Equatable {
  LoginState({
    this.frameOneController,
    this.loginModelObj,
  });

  TextEditingController? frameOneController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? frameOneController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      frameOneController: frameOneController ?? this.frameOneController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
