import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';

Widget sendMessage(textController,
userModel,
context){ return
  Container(
    color: Colors.cyan,
    height: 45.0,
    child: MaterialButton(
      onPressed: () {
        if (SocialCubit.get(context).messageImage ==
            null) {
          SocialCubit.get(context).sendMessage(
            text: textController.text,
            receiverId: userModel.uId,
            dateTime: DateTime.now().toString(),
          );
        } else {
          SocialCubit.get(context)
              .uploadChatImage(
            photo: SocialCubit.get(context).messageImage.toString(),
            text: textController.text,
            receiverId: userModel.uId,
            dateTime: DateTime.now().toString(),
          );
        }
      },
      minWidth: 1.0,
      child: const Icon(
        Icons.send,
        size: 16.0,
        color: Colors.white,
      ),
    ),
  );
}