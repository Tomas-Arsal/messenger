import 'package:flutter/material.dart';

import '../../../../../core/sharped/Components/Component.dart';
import '../../../../../core/utils/app_string.dart';

Widget TextFormPasswordRegister (passwordController){
    return      defaultTextFormField(
      controller: passwordController,
      textInputType: TextInputType.phone,
      validate: (String? val) {
        if (val!.isEmpty) {
          return 'Password must not be empty';
        }
      },
      label: 'Password',
      prefix: Icons.password,
    );
  }

