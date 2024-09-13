import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../user/data/models/user_model/user_model.dart';
import 'loginStates.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);
  bool isHidePassword = true;
  IconData password = Icons.visibility_outlined;
  ShopLoginModel? ShopLogin;
  void changePassword() {
    isHidePassword = !isHidePassword;
    password = isHidePassword
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(ChangePassword());
  }

  void userLogin ({required String email, required String password}){
    emit(LoadingLogIn());
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) {

      emit(SuccessLogIn(value.user!.uid));

    }).catchError((onError){
      emit(ErrorLogIn(error: onError.toString()));

    });
}
  void PostData({required String email, required String password}) {
    emit(LoadingRegister());
FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password ,
).then((value) {
 // print(value.user?.email);
  // print(value.user!.uid);
  emit(SuccessRegister(value.user!.uid));
})
    .catchError((error) {
     // print(error.toString());
      emit(ErrorRegister(error: error.toString()));
    });
  }


}
