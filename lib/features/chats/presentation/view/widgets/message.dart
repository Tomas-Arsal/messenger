import 'package:flutter/cupertino.dart';
import 'package:messenger/features/chats/presentation/view/widgets/readMessage.dart';
import 'MessageWriteAndSent.dart';

Widget message(context,
textController,
userModel){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        readMessage(context),
        MessageWriteAndSent(textController, userModel, context),
      ],
    ),
  );
}