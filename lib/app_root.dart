import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start_flutter/view/screens/add_number/add_number.dart';
import 'package:start_flutter/view/screens/animation/profile.dart';
import 'package:start_flutter/view_model/bloc/add_number_cubit/add_number_cubit.dart';
import 'package:start_flutter/view_model/bloc/login/login_cubit.dart';

import 'add_screen.dart';
import 'login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNumberCubit(),),
        BlocProvider(create: (context) => LoginCubit(),),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LoginScreen(),
          );
        },
      ),
    );
  }
}
