import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow; 
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class SkillsCard extends StatefulWidget {
  final Widget child;
  const SkillsCard({super.key, required this.child});

  @override
  State<SkillsCard> createState() => _SkillsCardState();
}

class _SkillsCardState extends State<SkillsCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isPressed = true;
        });
      },
      onExit: (event) {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 209, 209, 209), width: 0.5),
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: isPressed ? 5 : 20,
              offset: isPressed ? const Offset(-10, -10) : const Offset(-10,-10),
              color: Colors.white,
              inset: isPressed,
            ),
            BoxShadow(
              blurRadius: isPressed ? 5 : 20,
              offset: isPressed ? const Offset(10, 10) : const Offset(10,10),
              color: const Color(0xFFA7A9AF),
              inset: isPressed,
            ),
            
          ]
        ),
        child: widget.child,
      ),
    );
  }
}