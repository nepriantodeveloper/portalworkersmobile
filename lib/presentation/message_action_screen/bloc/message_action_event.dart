// ignore_for_file: must_be_immutable

part of 'message_action_bloc.dart';

@immutable
abstract class MessageActionEvent extends Equatable {}

class MessageActionInitialEvent extends MessageActionEvent {
  @override
  List<Object?> get props => [];
}
