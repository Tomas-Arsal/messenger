

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/sharped/Components/Component.dart';

Widget nameEdit(nameController){
  return       defaultTextFormField(
    controller: nameController,
    textInputType: TextInputType.text,
    label: 'name',
    validate: (String? value) {
      if (value!.isEmpty) {
        return 'name must be found ya ngm';
      }
      return null;
    },
    prefix: Icons.supervised_user_circle_outlined,
  );
}