// ignore_for_file: must_be_immutable

part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  SettingsState({
    this.isCheckbox = false,
    this.settingsModelObj,
  });

  SettingsModel? settingsModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        isCheckbox,
        settingsModelObj,
      ];
  SettingsState copyWith({
    bool? isCheckbox,
    SettingsModel? settingsModelObj,
  }) {
    return SettingsState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      settingsModelObj: settingsModelObj ?? this.settingsModelObj,
    );
  }
}
