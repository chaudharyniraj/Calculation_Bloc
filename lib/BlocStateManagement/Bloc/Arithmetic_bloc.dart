import 'package:calculator_demo_app/BlocStateManagement/Bloc/Arithmetic_event.dart';
import 'package:calculator_demo_app/BlocStateManagement/Bloc/Arithmetic_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticBloc extends Bloc<ArithmeticEvent, ArithmeticState> {
  ArithmeticBloc() : super(ArithmeticInitial()) {
    on<ArithmeticEvent>((event, emit) {
      // if (event is Increment) {
      //   emit(ArithmeticState(counter: state.counter + 1));
      // } else {
      //   emit(ArithmeticState(counter: state.counter - 1));
      // }
      on<Addition>((event, emit) => emit(
          ArithmeticState(result: event.firstNumber + event.secondNumber)));
      on<Subtraction>((event, emit) => emit(
          ArithmeticState(result: event.firstNumber - event.secondNumber)));
      on<Multiplication>((event, emit) => emit(
          ArithmeticState(result: event.firstNumber * event.secondNumber)));
      on<Division>((event, emit) => emit(
          ArithmeticState(result: event.firstNumber / event.secondNumber)));
    });
  }
}
