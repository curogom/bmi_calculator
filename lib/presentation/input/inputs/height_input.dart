import 'package:bmi_calculator_with_riverpod/presentation/widget/default_frame.dart';
import 'package:bmi_calculator_with_riverpod/provider/bmi_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeightInput extends ConsumerWidget {
  const HeightInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bmiProvider);
    final height = state.height;

    return DefaultFrame(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Height',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '${height.toStringAsFixed(1)} cm',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Slider(
            value: height,
            min: 120,
            max: 220,
            divisions: (220 - 120) * 10,
            onChanged: (value) {
              ref.read(bmiProvider.notifier).setHeight(value.toDouble());
            },
          ),
        ],
      ),
    );
  }
}
