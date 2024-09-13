import 'package:flutter/cupertino.dart';
import 'package:messenger/features/edit/presentation/view/widgets/profileImageNotEquailNull.dart';
import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';
import '../../../../layout/presentation/manger/Cubit/social_state.dart';
import 'coverImageNotEquailNull.dart';

Widget coverAndprofileImageNotEquailNull(
    context, nameController, phoneController, bioController, state) {
  return Column(
    children: [
      if (state is SocialUploadLoadingSuccess)
        const SizedBox(
          height: 10.0,
        ),
      if (SocialCubit.get(context).profileImage != null ||
          SocialCubit.get(context).coverImage != null)
        Row(
          children: [
            profileImageNotEquailNull(
                context, nameController, phoneController, bioController, state),
            coverImageNotEquailNull(
                context, nameController, phoneController, bioController, state),
          ],
        ),
    ],
  );
}
