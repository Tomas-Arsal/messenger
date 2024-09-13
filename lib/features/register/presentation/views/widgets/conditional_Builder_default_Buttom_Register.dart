import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../../../../core/utils/app_string.dart';
import '../../manger/Register/register_cubit/REGISTERCubit.dart';

Widget ConditionalBuilderOfDefaultButtomRegister (context,
emailController,
passwordController,
nameController,
phoneController,){
    return         defaultButtom(
      background: Colors.lightBlueAccent,
      Width: double.infinity,
      function: () {
        RegisterCubit.get(context).userRegister(
          email: emailController.text,
          password: passwordController.text,
          name: nameController.text,
          phone: phoneController.text,
        );
      },
      text: AppString.register,
    );
  }

/*
*TextButton(
          onPressed: () {
            CashHelper.removeCacheData(key: 'token').then((value) {
              if (value) {
                navigateAndFinished(context, shopLayout());
              }
            });
          },
          child: Text('Sign Out'),
        ),
    );*/
