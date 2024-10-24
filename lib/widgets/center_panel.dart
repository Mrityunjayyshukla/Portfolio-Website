import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterPanel extends StatelessWidget {
  const CenterPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        ],
      ),
    );
  }
}
