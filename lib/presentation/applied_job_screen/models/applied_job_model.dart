import 'package:equatable/equatable.dart';
import 'listclock2_item_model.dart';
import 'listdescription2_item_model.dart';

// ignore: must_be_immutable
class AppliedJobModel extends Equatable {
  AppliedJobModel(
      {this.listclock2ItemList = const [],
      this.listdescription2ItemList = const []});

  List<Listclock2ItemModel> listclock2ItemList;

  List<Listdescription2ItemModel> listdescription2ItemList;

  AppliedJobModel copyWith(
      {List<Listclock2ItemModel>? listclock2ItemList,
      List<Listdescription2ItemModel>? listdescription2ItemList}) {
    return AppliedJobModel(
      listclock2ItemList: listclock2ItemList ?? this.listclock2ItemList,
      listdescription2ItemList:
          listdescription2ItemList ?? this.listdescription2ItemList,
    );
  }

  @override
  List<Object?> get props => [listclock2ItemList, listdescription2ItemList];
}
