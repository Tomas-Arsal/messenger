import 'package:flutter/material.dart';

import '../../../../../core/sharped/Components/Component.dart';
import '../../../../../core/utils/app_string.dart';

Widget TextFormPhoneRegister (phoneController){
    return   defaultTextFormField(
      controller: phoneController,
      textInputType: TextInputType.phone,
      validate: (String? val) {
        if (val!.isEmpty) {
          return 'phone must not be empty';
        }
      },
      label: 'Phone',
      prefix: Icons.phone,
    );
  }

