import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/features/register/presentation/views/widgets/conditional_Builder_default_Buttom_Register.dart';
import 'package:messenger/features/register/presentation/views/widgets/listenarOfBlocConsumer.dart';
import 'package:messenger/features/register/presentation/views/widgets/text_form_email_Register.dart';
import 'package:messenger/features/register/presentation/views/widgets/text_form_name_Register.dart';
import 'package:messenger/features/register/presentation/views/widgets/text_form_password_Register.dart';
import 'package:messenger/features/register/presentation/views/widgets/text_form_phone_Register.dart';

import '../manger/Register/register_cubit/REGISTERCubit.dart';
import '../manger/Register/register_cubit/registerStates.dart';

class RegisterScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  RegisterScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          appBar: AppBar(),
          body: BlocProvider(
            create: (context) => RegisterCubit(),
            child: BlocConsumer<RegisterCubit, RegisterStates>(
              listener: (context, state) {
                listenarOfBlocConsumerRegister(state, context);
              },
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          //   if (SocialCubit is )
                          //   LinearProgressIndicator(),
                          const SizedBox(height: 10.0),
                          TextFormNameRegister(nameController),
                          const SizedBox(height: 20.0),
                          TextFormEmailRegister(emailController),
                          const SizedBox(height: 20.0),
                          TextFormPhoneRegister(phoneController),
                          const SizedBox(height: 20.0),
                          TextFormPasswordRegister(passwordController),
                          const SizedBox(height: 20.0),
                          ConditionalBuilderOfDefaultButtomRegister(
                            context,
                            emailController,
                            passwordController,
                            nameController,
                            phoneController,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
