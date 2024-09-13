import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/sharped/Components/Component.dart';
import '../../../post/presentation/view/post.dart';
import '../manger/Cubit/social_cubit.dart';
import '../manger/Cubit/social_state.dart';

class SocialLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialState>(
          listener: (context, state) {
            if (state is SocialNewPostState) {
              navigateTo(context, PostScreen());
            }
          },
          builder: (context, state) {
            var cubit = SocialCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: Text(cubit.titles[cubit.CurrentIndex],),
              ),
              body: cubit.screens[cubit.CurrentIndex],
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: cubit.CurrentIndex,
                  onTap: (index) {
                    cubit.changeCurrentIndex(index);
                  },
                  items: cubit.BottomItems
              ),
            );
          });
  }
}
