import 'package:flutter/material.dart';

@immutable
abstract class ArithmeticEvent {}

class Addition extends ArithmeticEvent {
  final double firstNumber;
  final double secondNumber;

  Addition({required this.firstNumber, required this.secondNumber});
}

class Subtraction extends ArithmeticEvent {
  final double firstNumber;
  final double secondNumber;

  Subtraction({required this.firstNumber, required this.secondNumber});
}

class Multiplication extends ArithmeticEvent {
  final double firstNumber;
  final double secondNumber;

  Multiplication({required this.firstNumber, required this.secondNumber});
}

class Division extends ArithmeticEvent {
  final double firstNumber;
  final double secondNumber;

  Division({required this.firstNumber, required this.secondNumber});
}
