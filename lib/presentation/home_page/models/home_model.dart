import 'package:equatable/equatable.dart';
import 'listuser_item_model.dart';
import 'listgroup_item_model.dart';

// ignore: must_be_immutable
class HomeModel extends Equatable {
  HomeModel(
      {this.listuserItemList = const [], this.listgroupItemList = const []});

  List<ListuserItemModel> listuserItemList;

  List<ListgroupItemModel> listgroupItemList;

  HomeModel copyWith(
      {List<ListuserItemModel>? listuserItemList,
      List<ListgroupItemModel>? listgroupItemList}) {
    return HomeModel(
      listuserItemList: listuserItemList ?? this.listuserItemList,
      listgroupItemList: listgroupItemList ?? this.listgroupItemList,
    );
  }

  @override
  List<Object?> get props => [listuserItemList, listgroupItemList];
}
