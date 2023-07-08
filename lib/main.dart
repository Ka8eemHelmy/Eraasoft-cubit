import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:start_flutter/app_root.dart';
import 'package:start_flutter/view_model/data/local/shared_preference.dart';

import 'view_model/bloc/observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Shared.init();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
