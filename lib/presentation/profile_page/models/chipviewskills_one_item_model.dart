import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ChipviewskillsOneItemModel extends Equatable {
  ChipviewskillsOneItemModel(
      {this.skillsOneTxt = "Design & Creative", this.isSelected = false});

  String skillsOneTxt;

  bool isSelected;

  ChipviewskillsOneItemModel copyWith(
      {String? skillsOneTxt, bool? isSelected}) {
    return ChipviewskillsOneItemModel(
      skillsOneTxt: skillsOneTxt ?? this.skillsOneTxt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [skillsOneTxt, isSelected];
}
