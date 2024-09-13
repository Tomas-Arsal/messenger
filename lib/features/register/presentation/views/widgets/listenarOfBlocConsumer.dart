import '../../../../../core/sharped/Components/Component.dart';
import '../../../../layout/presentation/views/SocialLayout.dart';
import '../../manger/Register/register_cubit/registerStates.dart';

void listenarOfBlocConsumerRegister(state , context){
  if(state is SuccessUserCreate) {
    navigateAndFinished(context, SocialLayout());
  }
}