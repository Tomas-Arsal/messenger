import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import '../../../../../core/sharped/content/content.dart';
import '../../../data/models/SocialUserModel.dart';

part 'getuserdata_state.dart';

class GetuserdataCubit extends Cubit<GetuserdataState> {
  GetuserdataCubit() : super(GetuserdataInitial());
  // هنا جبنا معلومات المستخدم من ال firebase
  SocialUserModel? userModel;
  void getUserData() {
    emit(SocialGetUserModelLoadingSuccess());

    FirebaseFirestore.instance.collection('users').doc(uId).get().then((value) {
      userModel = SocialUserModel.fromMap(value.data());
      //  print(value.data());
      emit(SocialGetUserModelSuccess());
    }).catchError((onError) {
      print(onError.toString());
      emit(SocialGetUserModelError());
    });
  }

}
