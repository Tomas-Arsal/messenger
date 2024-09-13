import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/sharped/Components/Component.dart';
import '../../../../../core/utils/app_string.dart';

Widget TextFormPasswordLogin (TextEditingController passwordLogin, bool isPassword){
    return    defaultTextFormField(
        validate: (String? value) {
          if (value!.isEmpty) {
            return AppString.validateOfPassword;
          }
          return null;
        },
        prefix: Icons.lock,
        label: AppString.labelOfPassword,
        textInputType: TextInputType.phone,
        controller: passwordLogin,
        suffix: isPassword ? Icons.visibility_off : Icons.visibility,
        isPassword: isPassword,
        suffixPressed: () {
            isPassword = !isPassword;
        });

  }



