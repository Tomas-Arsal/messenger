import 'package:flutter/material.dart';
import '../../../../user/data/models/MessageModel.dart';

Widget buildRecevierMessage(MessageModel messageModel) => Align(
  alignment: AlignmentDirectional.centerStart,
  child: Container(
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.2),
      borderRadius: const BorderRadiusDirectional.only(
        bottomEnd: Radius.circular(10.0),
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

