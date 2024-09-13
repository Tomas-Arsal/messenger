
import 'package:flutter/material.dart';

import '../../../../../core/sharped/Components/Component.dart';

Widget phoneEdit(phoneController){
  return  defaultTextFormField(
    controller: phoneController,
    textInputType: TextInputType.phone,
    label: 'Phone',
    validate: (String? value) {
      if (value!.isEmpty) {
        return 'Phone must be found ya ngm';
      }
      return null;
    },
    prefix: Icons.call,
  );
}