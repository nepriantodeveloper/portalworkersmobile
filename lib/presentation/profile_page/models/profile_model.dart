import 'package:equatable/equatable.dart';
import 'chipviewskills_one_item_model.dart';
import 'profile_item_model.dart';

// ignore: must_be_immutable
class ProfileModel extends Equatable {
  ProfileModel(
      {this.chipviewskillsOneItemList = const [],
      this.profileItemList = const []});

  List<ChipviewskillsOneItemModel> chipviewskillsOneItemList;

  List<ProfileItemModel> profileItemList;

  ProfileModel copyWith(
      {List<ChipviewskillsOneItemModel>? chipviewskillsOneItemList,
      List<ProfileItemModel>? profileItemList}) {
    return ProfileModel(
      chipviewskillsOneItemList:
          chipviewskillsOneItemList ?? this.chipviewskillsOneItemList,
      profileItemList: profileItemList ?? this.profileItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewskillsOneItemList, profileItemList];
}
