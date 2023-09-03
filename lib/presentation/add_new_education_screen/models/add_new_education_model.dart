import 'package:equatable/equatable.dart';
import 'package:stock_workers/data/models/selectionPopupModel/selection_popup_model.dart';

// ignore: must_be_immutable
class AddNewEducationModel extends Equatable {
  AddNewEducationModel(
      {this.dropdownItemList = const [],
      this.selectedSmalllabelregulTwoTxt,
      this.smalllabelregulTwoTxt = "",
      this.selectedSmalllabelregulThreeTxt,
      this.smalllabelregulThreeTxt = ""});

  List<SelectionPopupModel> dropdownItemList;

  DateTime? selectedSmalllabelregulTwoTxt;

  String smalllabelregulTwoTxt;

  DateTime? selectedSmalllabelregulThreeTxt;

  String smalllabelregulThreeTxt;

  AddNewEducationModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList,
      DateTime? selectedSmalllabelregulTwoTxt,
      String? smalllabelregulTwoTxt,
      DateTime? selectedSmalllabelregulThreeTxt,
      String? smalllabelregulThreeTxt}) {
    return AddNewEducationModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      selectedSmalllabelregulTwoTxt:
          selectedSmalllabelregulTwoTxt ?? this.selectedSmalllabelregulTwoTxt,
      smalllabelregulTwoTxt:
          smalllabelregulTwoTxt ?? this.smalllabelregulTwoTxt,
      selectedSmalllabelregulThreeTxt: selectedSmalllabelregulThreeTxt ??
          this.selectedSmalllabelregulThreeTxt,
      smalllabelregulThreeTxt:
          smalllabelregulThreeTxt ?? this.smalllabelregulThreeTxt,
    );
  }

  @override
  List<Object?> get props => [
        dropdownItemList,
        selectedSmalllabelregulTwoTxt,
        smalllabelregulTwoTxt,
        selectedSmalllabelregulThreeTxt,
        smalllabelregulThreeTxt
      ];
}
