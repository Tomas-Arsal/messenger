import 'package:flutter/material.dart';

import '../../../../../core/sharped/Components/Component.dart';
import '../../../../../core/utils/app_string.dart';

Widget TextFormEmailRegister (emailController){
    return    defaultTextFormField(
      controller: emailController,
      textInputType: TextInputType.emailAddress,
      validate: (String? val) {
        if (val!.isEmpty) {
          return 'email must not be empty';
        }
      },
      label: 'Email',
      prefix: Icons.email,
    );
  }

