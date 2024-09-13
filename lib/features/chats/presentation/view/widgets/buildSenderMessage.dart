import 'package:flutter/material.dart';
import '../../../../user/data/models/MessageModel.dart';

Widget buildSenderMessage(MessageModel messageModel) => Align(
  alignment: AlignmentDirectional.centerEnd,
  child: Container(
    decoration: BoxDecoration(
      color: Colors.blue.withOpacity(0.2),
      borderRadius: const BorderRadiusDirectional.only(
        bottomStart: Radius.circular(10.0),
        topEnd: Radius.circular(10.0),
        topStart: Radius.circular(10.0),
      ),
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 5.0,
      horizontal: 10.0,
    ),
    child: Text(messageModel.text),
  ),
);