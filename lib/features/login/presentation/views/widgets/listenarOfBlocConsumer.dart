import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/sharped/Components/Component.dart';
import '../../../../../core/sharped/content/content.dart';
import '../../../../../core/sharped/local/cashHelper.dart';
import '../../../../layout/presentation/views/SocialLayout.dart';
import '../../manger/login_cubit/loginStates.dart';

void listenarOfBlocConsumer(state , context){
           if (state is ErrorLogIn) {
    showToast(text: state.error, state: ToastState.ERROR);
  }
  if (state is SuccessLogIn) {
    CashHelper.saveData(key: 'uId', value: state.uId).then((value) {
      // انا بعد ما حفظت ال id  هنا هناديه تاني عشان ميحصلهوش  kill
      uId = CashHelper.getData(key: 'uId');
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => SocialLayout()),
              (route) => false);
    });
  }
}