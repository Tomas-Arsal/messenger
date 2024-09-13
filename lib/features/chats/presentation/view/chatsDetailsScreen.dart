import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/features/chats/presentation/view/widgets/appBarChatDetails.dart';
import 'package:messenger/features/chats/presentation/view/widgets/message.dart';
import '../../../layout/presentation/manger/Cubit/social_cubit.dart';
import '../../../layout/presentation/manger/Cubit/social_state.dart';
import '../../../user/data/models/MessageModel.dart';
import '../../../user/data/models/SocialUserModel.dart';

class ChatsDetilScreen extends StatelessWidget {
  late SocialUserModel userModel;
  ChatsDetilScreen({required this.userModel});

  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      SocialCubit.get(context).getMessages(receiverId: userModel.uId);
      File? messageImage = SocialCubit.get(context).messageImage;

      return BlocConsumer<SocialCubit, SocialState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: appBarChatDetails(userModel),
            body: ConditionalBuilder(
              condition: true,
              //  SocialCubit.get(context).messages.isNotEmpty,
              builder: (BuildContext context) => message(context, textController, userModel),
              fallback: (BuildContext context) =>
                  const Center(child: CircularProgressIndicator()),
            ),
          );
        },
      );
    });
  }
}
