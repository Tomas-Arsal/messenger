import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';

Widget coverEdit(userModel, coverImage, context) {
  return Align(
    alignment: AlignmentDirectional.topStart,
    child: Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          width: double.infinity,
          height: 190.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            image: DecorationImage(
              image: coverImage == null
                  ? NetworkImage(
                      userModel.cover,
                    )
                  : FileImage(coverImage) as ImageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              SocialCubit.get(context).getCoverImage();
            },
            icon: const CircleAvatar(
              radius: 25.0,
              child: Icon(
                Icons.camera_enhance,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
