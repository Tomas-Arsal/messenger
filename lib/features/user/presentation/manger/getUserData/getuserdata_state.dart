part of 'getuserdata_cubit.dart';

@immutable
abstract class GetuserdataState {}

class GetuserdataInitial extends GetuserdataState {}

class SocialGetUserModelSuccess extends GetuserdataState {}

class SocialGetUserModelLoadingSuccess extends GetuserdataState {}

class SocialGetUserModelError extends GetuserdataState {}
