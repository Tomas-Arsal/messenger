import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/sharped/Components/Component.dart';
import '../../../../user/data/models/SocialUserModel.dart';
import '../../../../chats/presentation/view/chatsDetailsScreen.dart';

Widget buildChatsItems(SocialUserModel model, context) => InkWell(
  onTap: () {
    navigateTo(
        context,
        ChatsDetilScreen(
          userModel: model,
        ));
  },
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Card(
        elevation: 0.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            model.image,
          ),
        ),
      ),
      const SizedBox(
        width: 10.0,
      ),
      Text(
        model.name,
        style: const TextStyle(
          height: 2.9,
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
      ),
    ],
  ),
);
