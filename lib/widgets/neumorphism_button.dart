import 'package:flutter/material.dart';

class NeumorphismButton extends StatelessWidget {
  final Widget child;
  const NeumorphismButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            color: Theme.of(context).colorScheme.shadow,
            offset: const Offset(10, 10),
          ),
          const BoxShadow(
            blurRadius: 24,
            color: Color(0xFFFFFFFF),
            offset: Offset(-10, -10),
          ),
        ],
        gradient: const LinearGradient(
          stops: [0,1],
          colors: [
            Color(0xFFCECECE),
            Color(0xFFF5F5F5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: child,
    );
  }
}