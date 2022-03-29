import 'package:calculator_demo_app/BlocStateManagement/Bloc/Arithmetic_bloc.dart';
import 'package:calculator_demo_app/BlocStateManagement/HomePage.dart';
import 'package:calculator_demo_app/Calclulation/Calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<ArithmeticBloc>(
          create: (context) => ArithmeticBloc(), child: const HomePage()),
    );
  }
}
