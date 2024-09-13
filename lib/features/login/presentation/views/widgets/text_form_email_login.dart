import 'package:flutter/material.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../../../../core/utils/app_string.dart';

Widget TextFormEmailLogin(textLogin){
    return defaultTextFormField(
      controller: textLogin,
      textInputType: TextInputType.emailAddress,
      label: AppString.labelOfEmail,
      validate: (String? value) {
        if (value!.isEmpty) {
          return AppString.validateOfEmail;
        }
      },
      prefix: Icons.email,
    );
  }

