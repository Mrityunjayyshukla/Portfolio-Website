import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/bottom_nav_bar.dart';
import 'package:portfolio/widgets/center_panel.dart';
import 'package:portfolio/widgets/left_panel.dart';

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
                          decoration: _isHovered1
                              ? TextDecoration.underline
                              : TextDecoration.none,
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
                          decoration: _isHovered2
                              ? TextDecoration.underline
                              : TextDecoration.none,
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
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LeftPanel(),
              CenterPanel(),
              SizedBox(width: 80),
            ],
          ),
        ),
        
        bottomNavigationBar: const BottomNavBar()
    );
  }
}
