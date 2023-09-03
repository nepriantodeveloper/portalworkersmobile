// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

class FilterState extends Equatable {
  FilterState({this.filterModelObj});

  FilterModel? filterModelObj;

  @override
  List<Object?> get props => [
        filterModelObj,
      ];
  FilterState copyWith({FilterModel? filterModelObj}) {
    return FilterState(
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
