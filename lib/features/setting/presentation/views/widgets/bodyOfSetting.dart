import 'package:flutter/material.dart';
import 'package:messenger/features/setting/presentation/views/widgets/photoProfile.dart';
import 'coverProfile.dart';
import 'editProfile.dart';
import 'nameAndDescriptionProfile.dart';
import 'numberOfReacts.dart';

Widget bodyOfSetting(userModel, context) {
  return Column(
    children: [
      Stack(
        children: [
          coverProfile(userModel),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              photoProfile(userModel),
              const SizedBox(
                height: 10,
              ),
              nameAandDrscritionProfile(userModel),
              numberOfReacts(),
              editProfile(context),
            ],
          ),
        ],
      ),
    ],
  );
}
