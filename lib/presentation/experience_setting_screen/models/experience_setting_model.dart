import 'package:equatable/equatable.dart';
import 'listuser2_item_model.dart';

// ignore: must_be_immutable
class ExperienceSettingModel extends Equatable {
  ExperienceSettingModel({this.listuser2ItemList = const []});

  List<Listuser2ItemModel> listuser2ItemList;

  ExperienceSettingModel copyWith(
      {List<Listuser2ItemModel>? listuser2ItemList}) {
    return ExperienceSettingModel(
      listuser2ItemList: listuser2ItemList ?? this.listuser2ItemList,
    );
  }

  @override
  List<Object?> get props => [listuser2ItemList];
}
