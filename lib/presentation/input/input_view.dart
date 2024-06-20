import 'package:bmi_calculator_with_riverpod/presentation/input/inputs/calculate_button.dart';
import 'package:bmi_calculator_with_riverpod/presentation/input/inputs/gender_input.dart';
import 'package:bmi_calculator_with_riverpod/presentation/input/inputs/height_input.dart';
import 'package:bmi_calculator_with_riverpod/presentation/input/inputs/weight_and_age_input.dart';
import 'package:flutter/material.dart';

class InputView extends StatelessWidget {
  const InputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderInput(),
        HeightInput(),
        WeightAndAgeInput(),
        CalculateButton(),
      ],
    );
  }
}
