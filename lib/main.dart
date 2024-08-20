import 'package:bloc_examples/blocs/counter_bloc/counter_bloc_bloc.dart';
import 'package:bloc_examples/blocs/switch_bloc/switch_bloc.dart';
import 'package:bloc_examples/screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBlocBloc(),
        child: BlocProvider(
          create: (context) => SwitchBloc(),
          child: const CounterScreen(),
        ),
      ),
    );
  }
}
