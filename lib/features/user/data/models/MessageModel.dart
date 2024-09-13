import 'dart:convert';

class MessageModel {
  String senderId;
  String receiverId;
  String dateTime;
  String text;

  MessageModel({
    required this.senderId,
    required this.receiverId,
    required this.dateTime,
    required this.text,

  });

  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'receiverId': receiverId,
      'dateTime': dateTime,
      'text':text,

    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      senderId: map['senderId'],
      receiverId: map['receiverId'],
      dateTime: map['dateTime'],
      text: map['text'],
    );
  }
}