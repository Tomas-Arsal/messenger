import 'package:flutter/material.dart';
import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';

Widget AddComment (context , index){
    return  Expanded(
      child: InkWell(
        onTap: () {
          SocialCubit.get(context)
              .commentPost(SocialCubit.get(context).postsId[index]);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.chat_sharp,
                size: 18.0,
                color: Colors.amber,
              ),
              const SizedBox(width: 5.0),
              Text('0 comment',
//  SocialCubit.get(context).comments[index].toString(),
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


