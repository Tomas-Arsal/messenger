import 'package:flutter/cupertino.dart';
import 'package:messenger/features/edit/presentation/view/widgets/profileEdit.dart';
import 'coverEdit.dart';

Widget profileInEdit(userModel,
coverImage ,
context,
profileImage){
  return    Stack(
    children: [
      coverEdit(userModel, coverImage, context) ,
      profileEdit(userModel, profileImage, context),
    ],
  );
}