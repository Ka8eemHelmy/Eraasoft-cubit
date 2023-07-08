
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_flutter/view_model/bloc/login/login_states.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of<LoginCubit>(context);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool showPassword = true;

  var formKey = GlobalKey<FormState>();

  void toggleShowPassword(){
    showPassword = !showPassword;
    emit(ToggleShowPasswordState());
  }
}