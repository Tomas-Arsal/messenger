part of 'like_post_cubit.dart';

@immutable
abstract class LikePostState {}

class LikePostInitial extends LikePostState {}

// posts Id for likes

class LikePostsSuccess extends LikePostState{}

class LikePostsError extends LikePostState{
  final String error ;
  LikePostsError(this.error) ;

}