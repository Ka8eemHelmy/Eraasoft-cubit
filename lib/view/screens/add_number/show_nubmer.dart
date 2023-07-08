import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start_flutter/view_model/bloc/add_number_cubit/add_number_cubit.dart';
import 'package:start_flutter/view_model/bloc/add_number_cubit/add_number_states.dart';

class ShowNumber extends StatelessWidget {
  const ShowNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: AddNumberCubit.get(context)..resetNumber(),
      child: Scaffold(
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
                  listener: (context, state) {},
                  builder: (context, state) {
                    var cubit = AddNumberCubit.get(context);
                    return Text('${cubit.number}');
                  },
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
      ),
    );
  }
}
