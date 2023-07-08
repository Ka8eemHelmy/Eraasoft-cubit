import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start_flutter/view/screens/add_number/show_nubmer.dart';
import 'package:start_flutter/view_model/bloc/add_number_cubit/add_number_cubit.dart';
import 'package:start_flutter/view_model/bloc/add_number_cubit/add_number_states.dart';
import 'package:start_flutter/view_model/navigator/navigator.dart';

class AddNumber extends StatelessWidget {
  const AddNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Add Number Screen Build');
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The Current Number'),
              SizedBox(
                height: 20.h,
              ),
              BlocConsumer<AddNumberCubit, AddNumberState>(
                listener: (context, state) {
                  if (state is AddNumberSuccessState) {
                    print('Welcome');
                  }
                },
                builder: (context, state) {
                  print('Text Widget Build');
                  return Text('${AddNumberCubit
                      .get(context)
                      .number}');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigation.push(context, ShowNumber());
                },
                child: Text('Show Number'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AddNumberCubit.get(context).addNumber();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
