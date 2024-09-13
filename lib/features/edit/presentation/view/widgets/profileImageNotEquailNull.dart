import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/sharped/Components/Component.dart';
import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';
import '../../../../layout/presentation/manger/Cubit/social_state.dart';

Widget profileImageNotEquailNull (context,
nameController,
phoneController,
bioController,
state){
  return Column(children: [
    if (SocialCubit.get(context).profileImage != null)
      Expanded(
          child: textButtom(
              text: 'Upload Profile',
              function: () {
                SocialCubit.get(context).uploadProfileImage(
                    name: nameController.text,
                    phone: phoneController.text,
                    bio: bioController.text);
              })),
    const SizedBox(
      height: 5.0,
    ),
    if (state is SocialUploadLoadingSuccess)
      const LinearProgressIndicator(),
  ],);
}