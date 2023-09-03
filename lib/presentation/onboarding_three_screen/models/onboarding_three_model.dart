import 'package:equatable/equatable.dart';
import 'sliderapplicationsurely_item_model.dart';

// ignore: must_be_immutable
class OnboardingThreeModel extends Equatable {
  OnboardingThreeModel({this.sliderapplicationsurelyItemList = const []});

  List<SliderapplicationsurelyItemModel> sliderapplicationsurelyItemList;

  OnboardingThreeModel copyWith(
      {List<SliderapplicationsurelyItemModel>?
          sliderapplicationsurelyItemList}) {
    return OnboardingThreeModel(
      sliderapplicationsurelyItemList: sliderapplicationsurelyItemList ??
          this.sliderapplicationsurelyItemList,
    );
  }

  @override
  List<Object?> get props => [sliderapplicationsurelyItemList];
}
