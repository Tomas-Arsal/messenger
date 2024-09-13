import 'package:flutter/material.dart';
import '../../../../layout/presentation/manger/Cubit/social_cubit.dart';

postedImage(postImage , context){
    Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          width: double.infinity,
          height: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            image:  DecorationImage(
              image: FileImage(postImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              SocialCubit.get(context).removepostimage();
            },
            icon: const CircleAvatar(
              radius: 25.0,
              child: Icon(
                Icons.close,
              ),
            ),
          ),
        ),
      ],
    );
  }
