import 'package:equatable/equatable.dart';
import 'chipviewjobs_one_item_model.dart';

// ignore: must_be_immutable
class FilterModel extends Equatable {
  FilterModel({this.chipviewjobsOneItemList = const []});

  List<ChipviewjobsOneItemModel> chipviewjobsOneItemList;

  FilterModel copyWith(
      {List<ChipviewjobsOneItemModel>? chipviewjobsOneItemList}) {
    return FilterModel(
      chipviewjobsOneItemList:
          chipviewjobsOneItemList ?? this.chipviewjobsOneItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewjobsOneItemList];
}
