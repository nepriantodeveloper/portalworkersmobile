import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listuser_item_model.dart';
import '../models/listgroup_item_model.dart';
import 'package:stock_workers/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            listuserItemList: fillListuserItemList(),
            listgroupItemList: fillListgroupItemList())));
  }

  List<ListuserItemModel> fillListuserItemList() {
    return List.generate(2, (index) => ListuserItemModel());
  }

  List<ListgroupItemModel> fillListgroupItemList() {
    return List.generate(2, (index) => ListgroupItemModel());
  }
}
