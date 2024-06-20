import 'package:bmi_calculator_with_riverpod/model/bmi_info.dart';
import 'package:bmi_calculator_with_riverpod/presentation/widget/default_frame.dart';
import 'package:bmi_calculator_with_riverpod/provider/bmi_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenderInput extends StatelessWidget {
  const GenderInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: [
          _GenderSelector(gender: Gender.male),
          _GenderSelector(gender: Gender.female),
        ],
      ),
    );
  }
}

class _GenderSelector extends ConsumerWidget {
  const _GenderSelector({
    required this.gender,
  });

  final Gender gender;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bmiProvider);
    final selectedGender = state.gender;

    return DefaultFrame(
      isActive: gender == selectedGender,
      callback: () {
        ref.read(bmiProvider.notifier).setGender(gender);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(gender.icon, size: 60, color: Colors.white),
          const SizedBox(height: 6),
          Text(
            gender.displayName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
