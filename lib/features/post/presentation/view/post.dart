import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/features/post/presentation/view/widgets/addImage.dart';
import 'package:messenger/features/post/presentation/view/widgets/appBarPost.dart';
import 'package:messenger/features/post/presentation/view/widgets/postImage.dart';
import 'package:messenger/features/post/presentation/view/widgets/postText.dart';
import 'package:messenger/features/post/presentation/view/widgets/profilePost.dart';
import '../../../layout/presentation/manger/Cubit/social_cubit.dart';
import '../../../layout/presentation/manger/Cubit/social_state.dart';

class PostScreen extends StatelessWidget {
  var textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialState>(
      listener: (context, state) {},
      builder: (context, state) {
        File? postImage = SocialCubit.get(context).postImage;

        return Scaffold(
          appBar: appBarPost(context, textcontroller),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                if (state is createNewPostsLoadingSuccess)
                  const LinearProgressIndicator(),
                if (state is createNewPostsLoadingSuccess)
                  const SizedBox(
                    height: 10,
                  ),
                profilePost(),
                postText(textcontroller),
                if (postImage != null) postedImage(postImage, context),
                addImage(context),
              ],
            ),
          ),
        );
      },
    );
  }
}
