import 'package:flutter/material.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';

appBarPost(context,
    textcontroller) {return
  AppBar(
    title: const Text('Create Post'),
    actions: [
      textButtom(
          text: 'Post',
          function: () {
            var now = DateTime.now();
            if (SocialCubit.get(context).postImage == null) {
              SocialCubit.get(context).createNewPost(
                  dateTime: now.toString(), text: textcontroller.text);
            } else {
              SocialCubit.get(context).uploadPostImage(
                  dateTime: now.toString(), text: textcontroller.text);
            }
          }),
    ],
  );
}