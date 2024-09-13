import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_new_post_state.dart';

class CreateNewPostCubit extends Cubit<CreateNewPostState> {
  CreateNewPostCubit() : super(CreateNewPostInitial());
}
