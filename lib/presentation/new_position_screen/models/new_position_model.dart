import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class NewPositionModel extends Equatable {
  NewPositionModel(
      {this.selectedSmalllabelregulThreeTxt,
      this.smalllabelregulThreeTxt = "",
      this.selectedSmalllabelregulFourTxt,
      this.smalllabelregulFourTxt = ""});

  DateTime? selectedSmalllabelregulThreeTxt;

  String smalllabelregulThreeTxt;

  DateTime? selectedSmalllabelregulFourTxt;

  String smalllabelregulFourTxt;

  NewPositionModel copyWith(
      {DateTime? selectedSmalllabelregulThreeTxt,
      String? smalllabelregulThreeTxt,
      DateTime? selectedSmalllabelregulFourTxt,
      String? smalllabelregulFourTxt}) {
    return NewPositionModel(
      selectedSmalllabelregulThreeTxt: selectedSmalllabelregulThreeTxt ??
          this.selectedSmalllabelregulThreeTxt,
      smalllabelregulThreeTxt:
          smalllabelregulThreeTxt ?? this.smalllabelregulThreeTxt,
      selectedSmalllabelregulFourTxt:
          selectedSmalllabelregulFourTxt ?? this.selectedSmalllabelregulFourTxt,
      smalllabelregulFourTxt:
          smalllabelregulFourTxt ?? this.smalllabelregulFourTxt,
    );
  }

  @override
  List<Object?> get props => [
        selectedSmalllabelregulThreeTxt,
        smalllabelregulThreeTxt,
        selectedSmalllabelregulFourTxt,
        smalllabelregulFourTxt
      ];
}
