import 'package:bmi_calculator_with_riverpod/model/bmi_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bmiProvider = StateNotifierProvider<BmiNotifier, BmiInfo>((ref) {
  return BmiNotifier();
});

class BmiNotifier extends StateNotifier<BmiInfo> {
  BmiNotifier() : super(const BmiInfo());

  void setGender(Gender gender) {
    state = state.copyWith(gender: gender);
  }

  void setHeight(double height) {
    state = state.copyWith(height: height);
  }

  void setWeight(double weight) {
    state = state.copyWith(weight: weight);
  }

  void setAge(int age) {
    state = state.copyWith(age: age);
  }
}
