import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../user/data/models/SocialUserModel.dart';
import '../../../../../user/data/models/user_model/user_model.dart';
import 'registerStates.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(InitRegisterState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  void userRegister(
      {required String email,
      required String password,
      required String name,
      required String phone}) {
    emit(LoadingRegister());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user?.email);
      print(value.user!.uid);
      userCreate(name: name, email: email, phone: phone, uId: value.user!.uid);
      emit(SuccessRegister());
    }).catchError((error) {
      emit(ErrorRegister(error: error.toString()));
    });
  }

  void userCreate(
      {
        required String name,
      required String email,
      required String phone,
      required String uId}) {
    SocialUserModel userModel = SocialUserModel(
      name: name,
      email: email,
      phone: phone,
      uId: uId,
      bio: 'I beleive I will achieve my dream in one day',
      cover:
          'https://img.freepik.com/premium-photo/two-hands-reach-out-each-other-with-pink-violet-neon-light_175682-14288.jpg?w=740',
      emailVerified: false,
      image:
          'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/93131130_253599402481984_5654185219524132864_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_ohc=VqOkkRigKP8AX8wHUmx&tn=MGDyw8JXcSfb0lzV&_nc_ht=scontent.fcai21-4.fna&oh=00_AfBX0lQPSwWzo8uCLKKh2xADw6b0PE8RkKpkE7PoMVV5fA&oe=639FB65C',
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(userModel.toMap())
        .then((value) {
      emit(SuccessUserCreate());
    }).catchError((onError) {
      emit(ErrorUserCreate(error: onError));
    });
  }

  bool isHidePassword = true;
  IconData password = Icons.visibility_outlined;

  ShopLoginModel? shopLoginModel;

  void changePassword() {
    isHidePassword = !isHidePassword;
    password = isHidePassword
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(ChangeRegisterPassword());
  }
}
