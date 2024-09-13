import 'dart:convert';

class MessageAndPhotoModel {
  String senderId;
  String receiverId;
  String dateTime;
  String text;
  String photo ;

  MessageAndPhotoModel({
    required this.senderId,
    required this.receiverId,
    required this.dateTime,
    required this.text,
    required this.photo,

  });

  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'receiverId': receiverId,
      'dateTime': dateTime,
      'text':text,
      'photo':photo,

    };
  }

  factory MessageAndPhotoModel.fromMap(Map<String, dynamic> map) {
    return MessageAndPhotoModel(
      senderId: map['senderId'],
      receiverId: map['receiverId'],
      dateTime: map['dateTime'],
      text: map['text'],
      photo: map['photo'],
    );
  }
}