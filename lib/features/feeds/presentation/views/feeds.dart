import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/features/feeds/presentation/views/widgets/buildItemOfList.dart';
import '../../../../core/sharped/Components/Component.dart';
import '../../../../core/utils/Styles.dart';
import '../../../../core/utils/app_string.dart';
import '../../../layout/presentation/manger/Cubit/social_cubit.dart';
import '../../../layout/presentation/manger/Cubit/social_state.dart';

class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userModel = SocialCubit.get(context).userModel;
    return BlocConsumer<SocialCubit, SocialState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ConditionalBuilder(
          condition: SocialCubit.get(context).posts.isNotEmpty &&
              SocialCubit.get(context).userModel != null,
          builder: (BuildContext context) => SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(alignment: Alignment.bottomRight, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10.0,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: NetworkImage(
                          userModel!.cover,
                        ),
                        fit: BoxFit.cover,
                        height: 180,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      AppString.descriptionOfProfile,
                      style: Styles.textStyle18 ,
                    ),
                  )
                ]),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildItemOfList(
                      SocialCubit.get(context).posts[index], context, index),
                  separatorBuilder: (context, index) => Divide() ,
                  itemCount: SocialCubit.get(context).posts.length,
                ),
              ],
            ),
          ),
          fallback: (BuildContext context) =>
              const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

