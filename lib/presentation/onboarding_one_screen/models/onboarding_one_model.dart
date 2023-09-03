import 'package:equatable/equatable.dart';
import 'sliderthebestappfor_item_model.dart';

// ignore: must_be_immutable
class OnboardingOneModel extends Equatable {
  OnboardingOneModel({this.sliderthebestappforItemList = const []});

  List<SliderthebestappforItemModel> sliderthebestappforItemList;

  OnboardingOneModel copyWith(
      {List<SliderthebestappforItemModel>? sliderthebestappforItemList}) {
    return OnboardingOneModel(
      sliderthebestappforItemList:
          sliderthebestappforItemList ?? this.sliderthebestappforItemList,
    );
  }

  @override
  List<Object?> get props => [sliderthebestappforItemList];
}
