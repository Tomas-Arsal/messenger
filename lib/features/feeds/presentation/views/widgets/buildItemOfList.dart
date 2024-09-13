import 'package:flutter/material.dart';
import 'package:messenger/features/feeds/presentation/views/widgets/postOfImage.dart';
import 'package:messenger/features/feeds/presentation/views/widgets/postOfText.dart';
import 'package:messenger/features/feeds/presentation/views/widgets/profile.dart';
import 'package:messenger/features/feeds/presentation/views/widgets/write_comment.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../../../user/data/models/PostModel.dart';
import 'addCommentAndLike.dart';
import 'cardOfMyProfile.dart';


Widget buildItemOfList(PostModel model, context, index) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    elevation: 10.0,
    child: Column(
      children: [
        Row(
          children: [
            const cardOfMyProfile(),
            const SizedBox(
              width: 10.0,
            ),
            profile(model),
            const SizedBox(
              width: 30.0,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            ),
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        Divide(),
        postOfText(model, context),
        if (model.postImage != '') postOfImage(model),
        addCommentAndLike(context, index),
        Divide(),
        const writeComment(),
      ],
    ),
  );
}
