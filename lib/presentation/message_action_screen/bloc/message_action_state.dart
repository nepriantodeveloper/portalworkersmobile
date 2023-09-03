// ignore_for_file: must_be_immutable

part of 'message_action_bloc.dart';

class MessageActionState extends Equatable {
  MessageActionState({
    this.frameOneController,
    this.messageActionModelObj,
  });

  TextEditingController? frameOneController;

  MessageActionModel? messageActionModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        messageActionModelObj,
      ];
  MessageActionState copyWith({
    TextEditingController? frameOneController,
    MessageActionModel? messageActionModelObj,
  }) {
    return MessageActionState(
      frameOneController: frameOneController ?? this.frameOneController,
      messageActionModelObj:
          messageActionModelObj ?? this.messageActionModelObj,
    );
  }
}
