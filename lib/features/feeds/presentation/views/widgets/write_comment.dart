import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';

class writeComment extends StatelessWidget {
  const writeComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18.0,
                  backgroundImage: NetworkImage(
                    SocialCubit.get(context).userModel!.image,
                  ),
                ),
                const SizedBox(width: 15.0),
                Text(
                  'write a comment ...',
             //     style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Row(
            children: [
              const Icon(
                Icons.heart_broken,
                size: 18.0,
                color: Colors.red,
              ),
              const SizedBox(width: 5.0),
              Text(
                '',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

