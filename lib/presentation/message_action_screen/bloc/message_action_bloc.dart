import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/message_action_item_model.dart';
import 'package:stock_workers/widgets/custom_bottom_bar.dart';
import 'package:stock_workers/presentation/message_action_screen/models/message_action_model.dart';
part 'message_action_event.dart';
part 'message_action_state.dart';

class MessageActionBloc extends Bloc<MessageActionEvent, MessageActionState> {
  MessageActionBloc(MessageActionState initialState) : super(initialState) {
    on<MessageActionInitialEvent>(_onInitialize);
  }

  List<MessageActionItemModel> fillMessageActionItemList() {
    return List.generate(4, (index) => MessageActionItemModel());
  }

  _onInitialize(
    MessageActionInitialEvent event,
    Emitter<MessageActionState> emit,
  ) async {
    emit(state.copyWith(frameOneController: TextEditingController()));
    emit(state.copyWith(
        messageActionModelObj: state.messageActionModelObj
            ?.copyWith(messageActionItemList: fillMessageActionItemList())));
  }
}
