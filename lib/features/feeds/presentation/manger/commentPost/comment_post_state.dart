part of 'comment_post_cubit.dart';

@immutable
abstract class CommentPostState {}

class CommentPostInitial extends CommentPostState {}

// posts Id for  comment

class commentPostsSuccess extends CommentPostState{}

class commentPostsError extends CommentPostState{
  final String error ;
  commentPostsError(this.error) ;

}