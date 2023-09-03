import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listuser1_item_model.dart';
import 'package:stock_workers/presentation/notifications_general_screen/models/notifications_general_model.dart';
part 'notifications_general_event.dart';
part 'notifications_general_state.dart';

class NotificationsGeneralBloc
    extends Bloc<NotificationsGeneralEvent, NotificationsGeneralState> {
  NotificationsGeneralBloc(NotificationsGeneralState initialState)
      : super(initialState) {
    on<NotificationsGeneralInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsGeneralInitialEvent event,
    Emitter<NotificationsGeneralState> emit,
  ) async {
    emit(state.copyWith(
        notificationsGeneralModelObj: state.notificationsGeneralModelObj
            ?.copyWith(listuser1ItemList: fillListuser1ItemList())));
  }

  List<Listuser1ItemModel> fillListuser1ItemList() {
    return List.generate(4, (index) => Listuser1ItemModel());
  }
}
