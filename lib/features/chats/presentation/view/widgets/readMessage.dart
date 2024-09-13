import 'package:flutter/cupertino.dart';

import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';
import 'buildRecevierMessage.dart';
import 'buildSenderMessage.dart';

Widget readMessage(context){ return  Expanded(
  child: ListView.separated(
    itemBuilder: (BuildContext context, int index) {
      var message = SocialCubit.get(context).message[index];
      if (SocialCubit.get(context).userModel!.uId ==
          message.senderId) {
        return buildSenderMessage(message);
      }
      return buildRecevierMessage(message);
    },
    separatorBuilder: (BuildContext context, int index) =>
    const SizedBox(
      height: 10.0,
    ),
    itemCount: SocialCubit.get(context).message.length,
  ),
);}