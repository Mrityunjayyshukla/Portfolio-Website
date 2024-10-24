import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/about_section.dart';
import 'package:portfolio/widgets/bottom_nav_bar.dart';
import 'package:portfolio/screens/name_title.dart';
import 'package:portfolio/widgets/left_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isHovered1 = false;
  bool _isHovered2 = false;

  int _selectedIndex = 1;
  final List<Widget> _widgetOptions = <Widget>[
    const CenterPanel(),
    const AboutSection(),
    const Text("Projects"),
    const Text("Experience"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool _fabHover = false;

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
                    child: AnimatedScale(
                      scale: _isHovered1 ? 1.1 : 1,
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 80),
                      child: Text(
                        "Resume",
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
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
                    child: AnimatedScale(
                      scale: _isHovered2 ? 1.1: 1,
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 80),
                      child: Text(
                        "About Me",
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LeftPanel(),
            _widgetOptions[_selectedIndex],
            const SizedBox(width: 80),
          ],
        ),
      ),

      // Bottom Nav Bar
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),

      // Floating Action Button
      floatingActionButton: MouseRegion(
        onEnter: (event) {
          setState(() {
            _fabHover = true;
          });
        },
        onExit: (event) {
          setState(() {
            _fabHover = false;
          });
        },
        child: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              decoration: BoxDecoration(
                color: _fabHover? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.primary,
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
              child: Text(
                "Contact Me",
                style: GoogleFonts.roboto(
                  color: _fabHover ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
