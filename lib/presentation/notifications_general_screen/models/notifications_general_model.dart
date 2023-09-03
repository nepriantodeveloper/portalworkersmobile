import 'package:equatable/equatable.dart';
import 'listuser1_item_model.dart';

// ignore: must_be_immutable
class NotificationsGeneralModel extends Equatable {
  NotificationsGeneralModel({this.listuser1ItemList = const []});

  List<Listuser1ItemModel> listuser1ItemList;

  NotificationsGeneralModel copyWith(
      {List<Listuser1ItemModel>? listuser1ItemList}) {
    return NotificationsGeneralModel(
      listuser1ItemList: listuser1ItemList ?? this.listuser1ItemList,
    );
  }

  @override
  List<Object?> get props => [listuser1ItemList];
}
