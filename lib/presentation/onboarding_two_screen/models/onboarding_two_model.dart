import 'package:equatable/equatable.dart';
import 'slidermessage_item_model.dart';

// ignore: must_be_immutable
class OnboardingTwoModel extends Equatable {
  OnboardingTwoModel({this.slidermessageItemList = const []});

  List<SlidermessageItemModel> slidermessageItemList;

  OnboardingTwoModel copyWith(
      {List<SlidermessageItemModel>? slidermessageItemList}) {
    return OnboardingTwoModel(
      slidermessageItemList:
          slidermessageItemList ?? this.slidermessageItemList,
    );
  }

  @override
  List<Object?> get props => [slidermessageItemList];
}
