import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: Colors.black54,
      child: InkWell(
        onTap: () {
          context.go('/result');
        },
        overlayColor: WidgetStateProperty.all(Colors.red),
        child: Container(
          height: 80,
          alignment: Alignment.center,
          child: const Text(
            'CALCULATE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
