// import 'package:calculator_demo_app/BlocStateManagement/Model/ArithmeticModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc/Arithmetic_bloc.dart';
import 'Bloc/Arithmetic_event.dart';
import 'Bloc/Arithmetic_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double firstNumber = 0;
  double secondNumber = 0;
  // String operator = "";
  // var aData = ArithmeticModel(firstNumber: 0.0, secondNumber: 0.0);

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // textController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Calculation'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              textAlign: TextAlign.center,
              controller: TextEditingController(text: firstNumber.toString()),
              decoration: const InputDecoration(
                hintText: 'Enter First Number',
                labelText: 'Number 1',
              ),
              onChanged: (value) {
                if (value.isEmpty) {
                  firstNumber = 0;
                } else {
                  firstNumber = double.parse(value);
                }
                // print(firstNumber);
              },
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: TextEditingController(text: secondNumber.toString()),
              decoration: const InputDecoration(
                hintText: 'Enter Second Number',
                labelText: 'Number 2',
              ),
              onChanged: (value) {
                if (value.isEmpty) {
                  secondNumber = 0;
                } else {
                  secondNumber = double.parse(value);
                }
              },
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<ArithmeticBloc>().add(Addition(
                        firstNumber: firstNumber, secondNumber: secondNumber));
                  },
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<ArithmeticBloc>().add(Subtraction(
                        firstNumber: firstNumber, secondNumber: secondNumber));
                  },
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<ArithmeticBloc>().add(Multiplication(
                        firstNumber: firstNumber, secondNumber: secondNumber));
                  },
                  child: const Text('X'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<ArithmeticBloc>().add(Division(
                        firstNumber: firstNumber, secondNumber: secondNumber));
                  },
                  child: const Text('/'),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Answer: ',
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
                BlocBuilder<ArithmeticBloc, ArithmeticState>(
                  builder: (context, state) {
                    return Text(
                      state.result.toString(),
                      style: const TextStyle(fontSize: 20, color: Colors.blue),
                    );
                  },
                )
              ],
            )
            // BlocBuilder<ArithmeticBloc, ArithmeticState>(
            //   builder: (context, state) {
            //     return Text(state.result.toString());
            //   },
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     FloatingActionButton(
            //       onPressed: () {
            //         context.read<ArithmeticBloc>().add(Increment());
            //       },
            //       child: const Icon(Icons.add),
            //     ),
            //     FloatingActionButton(
            //       onPressed: () {
            //         context.read<ArithmeticBloc>().add(Decrement());
            //       },
            //       child: const Icon(Icons.remove),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
