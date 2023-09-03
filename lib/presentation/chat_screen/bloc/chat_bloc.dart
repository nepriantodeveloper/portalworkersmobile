import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:stock_workers/presentation/chat_screen/models/chat_model.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(ChatState initialState) : super(initialState) {
    on<ChatInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatInitialEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(state.copyWith(messageTwoController: TextEditingController()));
  }
}
