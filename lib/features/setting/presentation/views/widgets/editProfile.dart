import 'package:flutter/material.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../../../edit/presentation/view/editProfile.dart';

Widget editProfile(context){
  return Row(
    children: [
      Expanded(
        child: OutlinedButton(
          onPressed: () {},
          child: const Text(
            'Edit Profile',
          ),
        ),
      ),
      const SizedBox(width: 5.0,),
      OutlinedButton(
          onPressed: () {
            navigateTo(context, EditPrfileScreen());
          }, child: const Icon(Icons.edit)),

    ],
  );
}