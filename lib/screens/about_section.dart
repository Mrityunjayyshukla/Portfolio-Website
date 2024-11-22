import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/skills_data.dart';
import 'package:portfolio/widgets/skills_card.dart';
import 'package:portfolio/widgets/timeline_widget.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  bool _pythonHovered = false;
  bool _uiuxHovered = false;
  bool _threedDHovered = false;
  bool _flutterHovered = false;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width/1.5, // Or some fixed width
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "About Me".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            RichText(
              text: TextSpan(
                style: GoogleFonts.roboto(
                  fontSize: 24, color: Colors.black,
                ),
                children: [
                  const TextSpan(text: "Results-driven Computer Science and Engineering professional with a strong foundation in Programming and Problem-Solving. Adept in "),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: MouseRegion(
                      onEnter: (_){
                        setState(() {
                          _pythonHovered = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _pythonHovered = false;
                        });
                      },
                      child: Text(
                        "Python Programming",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: _pythonHovered ? Colors.grey : Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  const TextSpan(text: ", "),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: MouseRegion(
                      onEnter: (_){
                        setState(() {
                          _uiuxHovered = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _uiuxHovered = false;
                        });
                      },
                      child: Text(
                        "UI/UX Design",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: _uiuxHovered ? Colors.grey : Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  const TextSpan(text: ", "),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: MouseRegion(
                      onEnter: (_){
                        setState(() {
                          _threedDHovered = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _threedDHovered = false;
                        });
                      },
                      child: Text(
                        "3D Design",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: _threedDHovered ? Colors.grey : Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  const TextSpan(text: ", "),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: MouseRegion(
                      onEnter: (_){
                        setState(() {
                          _flutterHovered = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _flutterHovered = false;
                        });
                      },
                      child: Text(
                        "Cross-Platform App Development",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: _flutterHovered ? Colors.grey : Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  const TextSpan(text: ". Highly skilled in leveraging emerging technologies to deliver innovative solutions. Eager to contribute technical expertise and passion for programming to a dynamic software development team")
                  
                ]
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
              mainAxisAlignment: MainAxisAlignment.center,
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
              mainAxisAlignment: MainAxisAlignment.center,
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
              mainAxisAlignment: MainAxisAlignment.center,
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
            const TimelineCustomWidget(),
            const SizedBox(height: 100),
            Text(
              "Education".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            const EducationCustomWidget(),
          ],
        ),
      ),
    );
  }
}
