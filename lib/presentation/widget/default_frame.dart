import 'package:flutter/material.dart';

class DefaultFrame extends StatelessWidget {
  final Widget child;
  final bool isActive;
  final VoidCallback? callback;

  const DefaultFrame({
    super.key,
    required this.child,
    this.isActive = false,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: callback,
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? Colors.black87 : Colors.black54,
            borderRadius: BorderRadius.circular(32),
          ),
          margin: const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}
