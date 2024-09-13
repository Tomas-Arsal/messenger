import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../manger/login_cubit/loginCubit.dart';

Widget ConditionalBuilderOfDefaultButtomLogin (formKey , textLogin , passwordLogin){
    return  Center(
      child: ConditionalBuilder(
        condition: true,
        builder: (BuildContext context) => defaultButtom(
          background: Colors.black12,
          Width: double.infinity,
          function: () {
            if (formKey.currentState!.validate()) {
              LoginCubit.get(context).userLogin(
                email: textLogin.text,
                password: passwordLogin.text,
              );
            }
          },
          text: 'Login',
        ),
        fallback: (BuildContext context) =>
        const CircularProgressIndicator(),
      ),
    );
  }

