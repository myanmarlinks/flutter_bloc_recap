import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_three/bloc/color/bloc.dart';
import 'package:test_three/bloc/data/bloc.dart';
import 'package:test_three/bloc/page/bloc.dart';
import 'package:test_three/helper/simple_bloc_delegate.dart';
import 'package:test_three/ui/my_home.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = "Hello BLoC";
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(
          create: (BuildContext context) => ColorBloc(),
        ),
        BlocProvider<PageBloc>(
          create: (BuildContext context) => PageBloc(),
        ),
        BlocProvider<DataBloc>(
          create: (BuildContext context) => DataBloc(),
        )
      ],
      child: MaterialApp(
        title: _title,
        home: MyHome(),
      ),
    );
  }
}
