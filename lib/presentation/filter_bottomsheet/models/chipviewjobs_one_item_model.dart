import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ChipviewjobsOneItemModel extends Equatable {
  ChipviewjobsOneItemModel(
      {this.jobsOneTxt = "Part Time", this.isSelected = false});

  String jobsOneTxt;

  bool isSelected;

  ChipviewjobsOneItemModel copyWith({String? jobsOneTxt, bool? isSelected}) {
    return ChipviewjobsOneItemModel(
      jobsOneTxt: jobsOneTxt ?? this.jobsOneTxt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [jobsOneTxt, isSelected];
}
