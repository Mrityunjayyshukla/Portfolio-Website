import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double padding = constraints.maxWidth * 0.38;

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: padding, vertical: 24),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
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
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "icons/home.svg",
                  height: 32,
                  width: 32,
                ),
                SvgPicture.asset(
                  "icons/about.svg",
                  height: 32,
                  width: 32,
                ),
                SvgPicture.asset(
                  "icons/projects.svg",
                  height: 32,
                  width: 32,
                ),
                SvgPicture.asset(
                  "icons/experiences.svg",
                  height: 32,
                  width: 32,
                ),
                SvgPicture.asset(
                  "icons/resume.svg",
                  height: 32,
                  width: 32,
                ),
              ],
            )),
      );
    });
  }
}
