import 'package:flutter/cupertino.dart';

import '../../../../../core/sharped/Components/Component.dart';
import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';

PreferredSizeWidget AppBarEdit(
    BuildContext context, nameController, phoneController, bioController) {
  return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: defaultAppBar(
        context: context,
        title: 'Edit Profile',
        actions: [
          textButtom(
              text: 'UPDATE',
              function: () {
                SocialCubit.get(context).updateUser(
                    name: nameController.text,
                    phone: phoneController.text,
                    bio: bioController.text);
              })
        ],
      ));
}
