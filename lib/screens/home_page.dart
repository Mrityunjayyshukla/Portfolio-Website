import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/neumorphism_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isHovered1 = false;
  bool _isHovered2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100), 
        child: Padding(
          padding: const EdgeInsets.only(right: 36.0, left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/memoji.png",
                height: 100,
                width: 100,
              ),
              Row(
                children: [
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        _isHovered1 = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        _isHovered1 = false;
                      });
                    },
                    child: Text(
                      "Resume",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.secondary,
                        decoration: _isHovered1 ? TextDecoration.underline : TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 32),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        _isHovered2 = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        _isHovered2 = false;
                      });
                    },
                    child: Text(
                      "About Me",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.secondary,
                        decoration: _isHovered2 ? TextDecoration.underline : TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),


      // Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Mrityunjay Shukla".toUpperCase(),
              style: GoogleFonts.architectsDaughter(
                fontSize: 60,
                letterSpacing: 10,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "and I'm a",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 32,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 400,
              child: CarouselSlider(
                options: CarouselOptions(
                  scrollDirection: Axis.vertical,
                  height: 90,
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
                  autoPlayInterval: const Duration(seconds: 1),
                  autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                ),
                items: [
                  Text(
                    "Flutter Developer",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 48,
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "A.I. Enthusiast",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 48,
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "UI/UX Designer",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 48,
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "3D Designer",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 48,
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const NeumorphismButton(child: Text("Hello"), width: 40, height: 40),
          ],
        ),
      ),
      
    );
  }
}