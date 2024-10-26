import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/projects_carousel.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width / 1.25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            const SizedBox(height: 60),
            Text(
              "Programming Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 24, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            const ProjectsCarousel(),
            const SizedBox(height: 48),
            Text(
              "UI/UX Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 24, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            const ProjectsCarousel(),
            const SizedBox(height: 48),
            Text(
              "3D Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 24, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            const ProjectsCarousel()
          ],
        ),
      ),
    );
  }
}