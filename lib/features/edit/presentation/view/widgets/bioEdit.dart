
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/sharped/Components/Component.dart';

Widget bioEdit(bioController){
  return    defaultTextFormField(
    controller: bioController,
    textInputType: TextInputType.text,
    label: 'Bio',
    validate: (String? value) {
      if (value!.isEmpty) {
        return 'Bio must be found ya ngm';
      }
      return null;
    },
    prefix: Icons.info_outline_rounded,
  );
}