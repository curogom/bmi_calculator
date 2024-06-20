import 'package:bmi_calculator_with_riverpod/presentation/widget/default_frame.dart';
import 'package:bmi_calculator_with_riverpod/provider/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeightAndAgeInput extends ConsumerWidget {
  const WeightAndAgeInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bmiProvider);
    final weight = state.weight;
    final age = state.age.toDouble();

    return DefaultFrame(
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Weight',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '${weight.toStringAsFixed(0)} kg',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Slider(
                  value: weight,
                  min: 30,
                  max: 200,
                  divisions: 200 - 30,
                  onChanged: (value) {
                    ref.read(bmiProvider.notifier).setWeight(value.toDouble());
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Age',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '$age',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Slider(
                  value: age,
                  min: 10,
                  max: 100,
                  divisions: 100 - 10,
                  onChanged: (value) {
                    ref.read(bmiProvider.notifier).setAge(value.toInt());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
