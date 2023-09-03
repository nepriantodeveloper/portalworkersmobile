import 'package:equatable/equatable.dart';
import 'listclock_item_model.dart';
import 'listdescription_item_model.dart';

// ignore: must_be_immutable
class JobDetailsModel extends Equatable {
  JobDetailsModel(
      {this.listclockItemList = const [],
      this.listdescriptionItemList = const []});

  List<ListclockItemModel> listclockItemList;

  List<ListdescriptionItemModel> listdescriptionItemList;

  JobDetailsModel copyWith(
      {List<ListclockItemModel>? listclockItemList,
      List<ListdescriptionItemModel>? listdescriptionItemList}) {
    return JobDetailsModel(
      listclockItemList: listclockItemList ?? this.listclockItemList,
      listdescriptionItemList:
          listdescriptionItemList ?? this.listdescriptionItemList,
    );
  }

  @override
  List<Object?> get props => [listclockItemList, listdescriptionItemList];
}
