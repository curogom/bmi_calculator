import 'package:flutter/material.dart';

class BmiInfo {
  final Gender? gender;
  final double height;
  final double weight;
  final int age;

  const BmiInfo({
    this.gender,
    this.height = 160,
    this.weight = 80,
    this.age = 30,
  });

  BmiInfo copyWith({
    Gender? gender,
    double? height,
    double? weight,
    int? age,
  }) {
    return BmiInfo(
      gender: gender ?? this.gender,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      age: age ?? this.age,
    );
  }

  double? get bmi {
    return weight / ((height / 100) * (height / 100));
  }

  BmiResultType? get resultType {
    if (bmi == null) {
      return null;
    }

    switch (bmi!) {
      case < 18.5:
        return BmiResultType.underweight;
      case < 25:
        return BmiResultType.normal;
      case < 30:
        return BmiResultType.overweight;
      default:
        return BmiResultType.obese;
    }
  }
}

enum BmiResultType {
  underweight(color: Colors.blue),
  normal(color: Colors.green),
  overweight(color: Colors.orange),
  obese(color: Colors.red);

  final MaterialColor color;

  const BmiResultType({this.color = Colors.red});

  String get displayName {
    switch (this) {
      case BmiResultType.underweight:
        return 'Underweight';
      case BmiResultType.normal:
        return 'Normal';
      case BmiResultType.overweight:
        return 'Overweight';
      case BmiResultType.obese:
        return 'Obese';
    }
  }
}

enum Gender {
  male(displayName: 'Male', icon: Icons.male),
  female(displayName: 'Female', icon: Icons.female);

  final IconData icon;
  final String displayName;

  const Gender({required this.displayName, required this.icon});
}
