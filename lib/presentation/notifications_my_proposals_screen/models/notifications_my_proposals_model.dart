import 'package:equatable/equatable.dart';
import 'listlocation_item_model.dart';

// ignore: must_be_immutable
class NotificationsMyProposalsModel extends Equatable {
  NotificationsMyProposalsModel({this.listlocationItemList = const []});

  List<ListlocationItemModel> listlocationItemList;

  NotificationsMyProposalsModel copyWith(
      {List<ListlocationItemModel>? listlocationItemList}) {
    return NotificationsMyProposalsModel(
      listlocationItemList: listlocationItemList ?? this.listlocationItemList,
    );
  }

  @override
  List<Object?> get props => [listlocationItemList];
}
