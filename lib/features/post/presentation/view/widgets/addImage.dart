import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';

addImage(context){ return Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
          child: TextButton(
            onPressed: () {
              SocialCubit.get(context).getPostImage();
            },
            child: Row(
              children: const [
                Icon(Icons.image),
                SizedBox(
                  width: 5.0,
                ),
                Text('Add Photos'),
              ],
            ),
          )),
      Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text('# tags'),
          )),
    ],
  ),
);}