import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        children: [
          
          Text(
            "About Me".toUpperCase(),
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              letterSpacing: 5
            ),
          ),
          const SizedBox(height: 24),
          Text(
            textAlign: TextAlign.center,
            "Results-driven Computer Science and Engineering professional with a\nstrong foundation in Programming and Problem-Solving. Adept in Python\nProgramming, UI/UX Design, Cross-Platform App Development, and\nMachine Learning. Highly skilled in leveraging emerging technologies to\ndeliver innovative solutions. Eager to contribute technical expertise and\npassion for programming to a dynamic software development team",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.normal,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}