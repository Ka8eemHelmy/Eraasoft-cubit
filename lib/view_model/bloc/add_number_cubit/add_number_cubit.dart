import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_flutter/view_model/bloc/add_number_cubit/add_number_states.dart';

class AddNumberCubit extends Cubit<AddNumberState>{
  AddNumberCubit(): super(AddNumberInitialState());

  static AddNumberCubit get (context) => BlocProvider.of<AddNumberCubit>(context);

  int number = 0;

  void addNumber(){
    number++;
    emit(AddNumberSuccessState());
  }

  void resetNumber(){
    number = 0;
    emit(ResetNumberState());
  }
}