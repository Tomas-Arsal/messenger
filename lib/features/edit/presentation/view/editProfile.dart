import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/features/edit/presentation/view/widgets/coverAndImageNotEqualNull.dart';
import 'package:messenger/features/edit/presentation/view/widgets/defaultAppBar.dart';
import 'package:messenger/features/edit/presentation/view/widgets/detailsWillUpdating.dart';
import 'package:messenger/features/edit/presentation/view/widgets/profile.dart';
import 'package:messenger/features/edit/presentation/view/widgets/stateOfSocialUpdateLoadingSuccess.dart';
import '../../../layout/presentation/manger/Cubit/social_cubit.dart';
import '../../../layout/presentation/manger/Cubit/social_state.dart';

class EditPrfileScreen extends StatefulWidget {
  @override
  State<EditPrfileScreen> createState() => _EditPrfileScreenState();
}

class _EditPrfileScreenState extends State<EditPrfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialState>(
      listener: (context, state) {},
      builder: (context, state) {
        var userModel = SocialCubit.get(context).userModel;
        var profileImage = SocialCubit.get(context).profileImage;
        var coverImage = SocialCubit.get(context).coverImage;
        nameController.text = userModel!.name;
        phoneController.text = userModel.phone;
        bioController.text = userModel.bio;

        return Scaffold(
          appBar: AppBarEdit(
              context, nameController, phoneController, bioController),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  stateSocialUpdateLoadingSuccess(state) ,
                  profileInEdit(userModel, coverImage, context, profileImage),
                  coverAndprofileImageNotEquailNull(context, nameController,
                      phoneController, bioController, state),
                  detailsWillUpdating(
                      nameController, bioController, phoneController),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
