import 'package:equatable/equatable.dart';
import 'message_action_item_model.dart';

// ignore: must_be_immutable
class MessageActionModel extends Equatable {
  MessageActionModel({this.messageActionItemList = const []});

  List<MessageActionItemModel> messageActionItemList;

  MessageActionModel copyWith(
      {List<MessageActionItemModel>? messageActionItemList}) {
    return MessageActionModel(
      messageActionItemList:
          messageActionItemList ?? this.messageActionItemList,
    );
  }

  @override
  List<Object?> get props => [messageActionItemList];
}
