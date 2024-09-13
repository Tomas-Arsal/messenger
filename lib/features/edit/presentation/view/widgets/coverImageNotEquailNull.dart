import 'package:flutter/material.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';
import '../../../../layout/presentation/manger/Cubit/social_state.dart';

Widget coverImageNotEquailNull (context,
nameController,
phoneController,
bioController,
state){
  return Column(children: [         if (state is SocialUploadLoadingSuccess)
    const SizedBox(
      width: 10.0,
    ),
    if (SocialCubit.get(context).coverImage != null)
      Expanded(
          child: textButtom(
              text: 'Upload Cover',
              function: () {
                SocialCubit.get(context).uploadcoverImage(
                    name: nameController.text,
                    phone: phoneController.text,
                    bio: bioController.text);
              })),
    const SizedBox(
      height: 5.0,
    ),
    if (state is SocialUploadLoadingSuccess)
      const LinearProgressIndicator(),],);
}