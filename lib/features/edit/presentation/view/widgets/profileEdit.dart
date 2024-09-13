import 'package:flutter/material.dart';
import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';

Widget profileEdit(userModel, profileImage, context) {
  return Stack(
    alignment: AlignmentDirectional.bottomEnd,
    children: [
      Container(
        margin: const EdgeInsets.only(
          top: 100,
          left: 120,
        ),
        child: CircleAvatar(
          radius: 80,
          backgroundImage: profileImage == null
              ? NetworkImage(
                  userModel.image,
                )
              : FileImage(profileImage) as ImageProvider,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: () {
            SocialCubit.get(context).getProfileImage();
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
  );
}
