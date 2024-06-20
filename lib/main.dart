import 'package:bmi_calculator_with_riverpod/presentation/input/input_screen.dart';
import 'package:bmi_calculator_with_riverpod/presentation/result/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'router.dart';

void main() {
  runApp(const ProviderScope(child: BMIApp()));
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BMI Calculator',
      routerConfig: _router,
    );
  }
}
