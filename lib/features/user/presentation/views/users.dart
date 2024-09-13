import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/sharped/Components/Component.dart';
import '../../../home/presentation/views/widgets/build_chat_items.dart';
import '../../../layout/presentation/manger/Cubit/social_cubit.dart';
import '../../../layout/presentation/manger/Cubit/social_state.dart';
import '../../data/models/SocialUserModel.dart';
import '../../../chats/presentation/view/chatsDetailsScreen.dart';
class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ConditionalBuilder(
          condition: SocialCubit
              .get(context)
              .users
              .isNotEmpty,
          builder: (context) =>
              ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) =>
                    buildChatsItems(SocialCubit
                        .get(context)
                        .users[index], context),
                separatorBuilder: (BuildContext context, int index) =>
                    Divide(),
                itemCount: SocialCubit
                    .get(context)
                    .users
                    .length,
              ),
          fallback: (context) =>
          const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}