import 'package:flutter/material.dart';
import 'package:messenger/features/user/presentation/views/Widgets/profileUser.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../../data/models/SocialUserModel.dart';
import '../../../../chats/presentation/view/chatsDetailsScreen.dart';
import 'navigateToChatsDetails.dart';

Widget buildChatsItems(SocialUserModel model, context) => InkWell(
  onTap: () {
    navigateToChatsDetails(context, model);
    },
  child: profileUser(model),
);

