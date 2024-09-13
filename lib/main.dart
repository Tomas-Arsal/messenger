import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/sharped/local/cashHelper.dart';
import 'core/sharped/remote/Dio_helper.dart';
import 'core/sharped/style/theme.dart';
import 'features/layout/presentation/manger/Cubit/social_cubit.dart';
import 'features/layout/presentation/views/SocialLayout.dart';
import 'features/splash/splash_view.dart';
import 'features/user/presentation/manger/main_cubit/Main_Cubit.dart';
import 'features/user/presentation/manger/main_cubit/Main_State.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  DioHelper.init();
  await CashHelper.init();
  Widget widget;

  var uId = CashHelper.getData(key: 'uId');
  if (uId != null) {
    widget = SocialLayout();
  } else {
    widget = const SplashView();
  }

  runApp(MyApp(widget));
}

class MyApp extends StatelessWidget {
  final Widget? widget;

  MyApp(this.widget);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => MainCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => SocialCubit()
            ..getUserData()
            ..getPosts()
            ..getPostsChatImages(),
        ),
      ],
      child: BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: dark,
            theme: light,
            // themeMode: MainCubit.get(context).isDark!
            //     ? ThemeMode.dark
            //     : ThemeMode.light,
            themeMode: ThemeMode.light,
            home: widget,
          );
        },
      ),
    );
  }
}
// المتبقي فى المشروع دا هوا رفع الصوره فى الشات .....
