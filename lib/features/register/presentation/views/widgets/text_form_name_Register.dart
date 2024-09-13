import 'package:flutter/material.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../../../../core/utils/app_string.dart';

Widget TextFormNameRegister (nameController) {
  return    defaultTextFormField(
    controller: nameController,
    textInputType: TextInputType.name,
    validate: (String? val) {
      if (val!.isEmpty) return 'name must not be empty';
    },
    label: 'Name',
    prefix: Icons.person,
  );

}
