import 'package:flutter/cupertino.dart';
import '../../../../../core/sharped/Components/Component.dart';
import '../../../../../core/utils/app_string.dart';
import '../../../../register/presentation/views/registerScreen.dart';

Widget Register (context){
  return  Center(
    child: Row(
      children: [
         const Text(
          AppString.dontHaveAnAccount,
        ),
        textButtom(
            text: AppString.register,
            function: () {
              navigateTo(context,  RegisterScreen());
            })
      ],
    ),
  );
}