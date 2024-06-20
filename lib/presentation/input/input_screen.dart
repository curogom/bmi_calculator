import 'package:bmi_calculator_with_riverpod/presentation/input/input_view.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: const InputView(),
    );
  }
}
