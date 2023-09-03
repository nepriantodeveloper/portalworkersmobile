import 'package:equatable/equatable.dart';
import 'listclock1_item_model.dart';
import 'listdescription1_item_model.dart';

// ignore: must_be_immutable
class SavedDetailJobModel extends Equatable {
  SavedDetailJobModel(
      {this.listclock1ItemList = const [],
      this.listdescription1ItemList = const []});

  List<Listclock1ItemModel> listclock1ItemList;

  List<Listdescription1ItemModel> listdescription1ItemList;

  SavedDetailJobModel copyWith(
      {List<Listclock1ItemModel>? listclock1ItemList,
      List<Listdescription1ItemModel>? listdescription1ItemList}) {
    return SavedDetailJobModel(
      listclock1ItemList: listclock1ItemList ?? this.listclock1ItemList,
      listdescription1ItemList:
          listdescription1ItemList ?? this.listdescription1ItemList,
    );
  }

  @override
  List<Object?> get props => [listclock1ItemList, listdescription1ItemList];
}
