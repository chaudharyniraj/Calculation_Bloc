import 'package:flutter/material.dart';

class ArithmeticState {
  // double firstNumber;
  // double secondNumber;
  final double result;
  ArithmeticState({required this.result});
}

class ArithmeticInitial extends ArithmeticState {
  ArithmeticInitial() : super(result: 0);
}
