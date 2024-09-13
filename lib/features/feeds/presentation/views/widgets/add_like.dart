import 'package:flutter/material.dart';
import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';
Widget AddLike (context , index){

    return Expanded(
      child: InkWell(
        onTap: () {
          SocialCubit.get(context)
              .likePost(SocialCubit.get(context).postsId[index]);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              const Icon(
                Icons.heart_broken,
                size: 18.0,
                color: Colors.red,
              ),
              const SizedBox(width: 5.0),
              Text(
                SocialCubit.get(context).likes[index].toString(),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }



