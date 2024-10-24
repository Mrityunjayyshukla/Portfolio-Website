import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/skills_data.dart';
import 'package:portfolio/widgets/skills_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "About Me".toUpperCase(),
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
          ),
          const SizedBox(height: 48),
          Text(
            textAlign: TextAlign.center,
            "Results-driven Computer Science and Engineering professional with a strong foundation in Programming and Problem-Solving. Adept in Python\nProgramming, UI/UX Design, Cross-Platform App Development, and Machine Learning. Highly skilled in leveraging emerging technologies to\ndeliver innovative solutions. Eager to contribute technical expertise and passion for programming to a dynamic software development team",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.normal,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 100),
          Text(
            "Skills".toUpperCase(),
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
          ),
          const SizedBox(height: 48),
          Row(
            children: [
              for (int i = 0; i < skillsList1.length; i++)
                Row(
                  children: [
                    const SizedBox(width: 20),
                    SkillsCard(imageFileName: skillsList1[i]),
                    const SizedBox(width: 20),
                  ],
                )
            ],
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              for (int i = 0; i < skillsList2.length; i++)
                Row(
                  children: [
                    const SizedBox(width: 20),
                    SkillsCard(imageFileName: skillsList2[i]),
                    const SizedBox(width: 20),
                  ],
                )
            ],
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              for (int i = 0; i < skillsList3.length; i++)
                Row(
                  children: [
                    const SizedBox(width: 20),
                    SkillsCard(imageFileName: skillsList3[i]),
                    const SizedBox(width: 20),
                  ],
                )
            ],
          ),
          const SizedBox(height: 100),
          Text(
            "Experience".toUpperCase(),
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
          ),
          const SizedBox(height: 48),
        ],
      ),
    );
  }
}
