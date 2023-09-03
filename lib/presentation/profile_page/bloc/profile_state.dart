// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  ProfileState({
    this.radioGroup = "",
    this.profileModelObj,
  });

  ProfileModel? profileModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        profileModelObj,
      ];
  ProfileState copyWith({
    String? radioGroup,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      radioGroup: radioGroup ?? this.radioGroup,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
