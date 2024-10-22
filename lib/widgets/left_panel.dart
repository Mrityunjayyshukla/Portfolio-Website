import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/widgets/neumorphism_button.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NeumorphismButton(
          child: SvgPicture.asset(
            "assets/icons/behance.svg",
            height: 32,
            width: 32,
          )
        ),
        const SizedBox(height: 24),
        NeumorphismButton(
          child: SvgPicture.asset(
            "assets/icons/artstation.svg",
            height: 32,
            width: 32,
          )
        ),
        const SizedBox(height: 24),
        NeumorphismButton(
          child: SvgPicture.asset(
            "assets/icons/github.svg",
            height: 32,
            width: 32,
          )
        ),
        const SizedBox(height: 24),
        NeumorphismButton(
          child: SvgPicture.asset(
            "assets/icons/twitter.svg",
            height: 32,
            width: 32,
          )
        ),
        const SizedBox(height: 24),
        NeumorphismButton(
          child: SvgPicture.asset(
            "assets/icons/linkedin.svg",
            height: 32,
            width: 32,
          )
        ),
        const SizedBox(height: 24),
        NeumorphismButton(
          child: SvgPicture.asset(
            "assets/icons/mail.svg",
            height: 32,
            width: 32,
          )
        ),
      ],
    );
  }
}