import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_posts_chat_images_state.dart';

class GetPostsChatImagesCubit extends Cubit<GetPostsChatImagesState> {
  GetPostsChatImagesCubit() : super(GetPostsChatImagesInitial());
}
