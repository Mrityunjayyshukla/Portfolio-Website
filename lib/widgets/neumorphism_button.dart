import 'package:flutter/material.dart';

class NeumorphismButton extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  const NeumorphismButton({super.key, required this.child, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.3),
            blurStyle: BlurStyle.inner,
            offset: const Offset(1, 1),
            blurRadius: 2,
          ),
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
            blurStyle: BlurStyle.inner,
            offset: const Offset(-1, -1),
            blurRadius: 2,
          ),
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.2),
            blurStyle: BlurStyle.normal,
            offset: const Offset(-8, 8),
            blurRadius: 16,
          ),
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.2),
            blurStyle: BlurStyle.normal,
            offset: const Offset(8, -8),
            blurRadius: 16,
          ),
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.9),
            blurStyle: BlurStyle.normal,
            offset: const Offset(-8, -8),
            blurRadius: 16,
          ),
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.9),
            blurStyle: BlurStyle.normal,
            offset: const Offset(8, 8),
            blurRadius: 20,
          ),
          
        ],
        
      ),
      child: child,
    );
  }
}