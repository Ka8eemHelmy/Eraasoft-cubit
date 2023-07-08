import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:start_flutter/view/screens/add_number/add_number.dart';
import 'package:start_flutter/view_model/bloc/login/login_cubit.dart';
import 'package:start_flutter/view_model/bloc/login/login_states.dart';
import 'package:start_flutter/view_model/navigator/navigator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocConsumer<LoginCubit, LoginStates>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = LoginCubit.get(context);
              return Form(
                key: cubit.formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Image.network(
                        'https://eraasoft.com/front/logo1.png',
                        fit: BoxFit.fitHeight,
                        height: 70,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Lottie.asset(
                        'assets/lottie/reading-book.json',
                        height: 200,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Login Now ...',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        onTap: () {
                          print('You are Tapped the input field');
                        },
                        controller: cubit.emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        enableInteractiveSelection: true,
                        enableSuggestions: true,
                        decoration: InputDecoration(
                          // label: Text('Email'),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.red),
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                              width: 4,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (String? value) {
                          if (!value!.contains('@gmail.com')) {
                            return 'Enter a valid email address';
                          } else if (value.length <= 10) {
                            return 'Enter a valid Email';
                          }
                          return null;
                        },
                        // autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onTap: () {
                          print('You are Tapped the input field');
                        },
                        controller: cubit.passwordController,
                        obscureText: cubit.showPassword,
                        obscuringCharacter: '*',
                        onChanged: (String value) {
                          print(value);
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(
                            Icons.password_rounded,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              cubit.toggleShowPassword();
                            },
                            icon: Icon(
                              cubit.showPassword ? Icons.visibility : Icons.visibility_off_rounded,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                              width: 4,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (String? value) {
                          if (value!.length < 8) {
                            return 'Enter a Password large than 8 charactes';
                          }
                          // else if (RegExp(r'').hasMatch(value)) {
                          //   return 'EPassword Must Contains an Upper Case Character';
                          // }
                          return null;
                        },
                        // autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            if (cubit.formKey.currentState!.validate()) {
                              Navigation.push(context, AddNumber());
                              // Navigation.pushReplacement(context, AddScreen());
                            }
                          },
                          child: Text(
                            'Login',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
