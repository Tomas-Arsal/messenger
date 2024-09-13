import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/features/login/presentation/views/widgets/conditional_Builder_default_Buttom_Login.dart';
import 'package:messenger/features/login/presentation/views/widgets/listenarOfBlocConsumer.dart';
import 'package:messenger/features/login/presentation/views/widgets/register.dart';
import 'package:messenger/features/login/presentation/views/widgets/text_form_email_login.dart';
import 'package:messenger/features/login/presentation/views/widgets/text_form_password_login.dart';
import 'package:messenger/features/login/presentation/views/widgets/text_login.dart';
import '../../../../core/sharped/Components/Component.dart';
import '../../../../core/sharped/content/content.dart';
import '../../../../core/sharped/local/cashHelper.dart';
import '../../../layout/presentation/views/SocialLayout.dart';
import '../manger/login_cubit/loginCubit.dart';
import '../manger/login_cubit/loginStates.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => SocialLoginState();
}

class SocialLoginState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  var textLogin = TextEditingController();
  var passwordLogin = TextEditingController();
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          listenarOfBlocConsumer(state, context);
        },
        builder: (BuildContext context, state) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextLogin(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormEmailLogin(textLogin),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormPasswordLogin(passwordLogin, isPassword),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ConditionalBuilderOfDefaultButtomLogin(
                        formKey, textLogin, passwordLogin),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Register(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
