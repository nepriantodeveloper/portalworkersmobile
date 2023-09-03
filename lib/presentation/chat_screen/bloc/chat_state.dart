// ignore_for_file: must_be_immutable

part of 'chat_bloc.dart';

class ChatState extends Equatable {
  ChatState({
    this.messageTwoController,
    this.chatModelObj,
  });

  TextEditingController? messageTwoController;

  ChatModel? chatModelObj;

  @override
  List<Object?> get props => [
        messageTwoController,
        chatModelObj,
      ];
  ChatState copyWith({
    TextEditingController? messageTwoController,
    ChatModel? chatModelObj,
  }) {
    return ChatState(
      messageTwoController: messageTwoController ?? this.messageTwoController,
      chatModelObj: chatModelObj ?? this.chatModelObj,
    );
  }
}
