import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/about_section.dart';
import 'package:portfolio/screens/achievements_section.dart';
import 'package:portfolio/screens/projects_section.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/bottom_nav_bar.dart';
import 'package:portfolio/screens/name_title.dart';
import 'package:portfolio/widgets/contact_textfield.dart';
import 'package:portfolio/widgets/left_panel.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isHovered1 = false;
  bool _isHovered2 = false;

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const CenterPanel(),
    const AboutSection(),
    const ProjectsSection(),
    const AchievementsSection(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool _fabHover = false;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: LeftPanel(),
            )
          : null,
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
                    child: GestureDetector(
                      onTap: (){
                        const resumeLink = "https://drive.google.com/file/d/1Frtg9RPMcv24rWdtQUUR7zVcDjI_KASN/view?usp=drivesdk";
                        launchUrl(
                          Uri.parse(resumeLink),
                          mode: LaunchMode.inAppBrowserView,
                        );
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
                    child: GestureDetector(
                      onTap: () {
                        const linkedInLink = "https://www.linkedin.com/in/mrityunjayyshukla";
                        launchUrl(
                          Uri.parse(linkedInLink),
                          mode: LaunchMode.inAppBrowserView
                        );
                      },
                      child: AnimatedScale(
                        scale: _isHovered2 ? 1.1 : 1,
                        curve: Curves.easeInOut,
                        duration: const Duration(milliseconds: 80),
                        child: Text(
                          "LinkedIn",
                          style: GoogleFonts.roboto(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (isDesktop) 
                const LeftPanel(),
              Center(child: _widgetOptions[_selectedIndex]),
              // const SizedBox(width: 80),
            ],
          ),
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
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Theme.of(context).colorScheme.primary,
                scrollable: true,
                actions: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 24),
                      child: Text(
                        "Close",
                        style: GoogleFonts.roboto(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                content: Container(
                  padding: const EdgeInsets.all(24),
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Let's connect,\nTell me about your\nproject",
                                style: GoogleFonts.roboto(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                "Let's create something together",
                                style: GoogleFonts.roboto(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Text(
                                  "Send us a message",
                                  style: GoogleFonts.roboto(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 32),
                                const ContactTextfield(
                                    hintText: "Enter Full Name"),
                                const SizedBox(height: 16),
                                const ContactTextfield(
                                    hintText: "Email Address"),
                                const SizedBox(height: 16),
                                const ContactTextfield(hintText: "Subject"),
                                const SizedBox(height: 16),
                                Text(
                                  "Tell me about your project",
                                  style: GoogleFonts.roboto(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    border: Border.all(
                                        width: 2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: TextField(
                                    cursorColor:
                                        Theme.of(context).colorScheme.secondary,
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Enter your Message",
                                      hintStyle: GoogleFonts.roboto(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 24),
                                    child: Text(
                                      "Submit",
                                      style: GoogleFonts.roboto(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),

                // actionsAlignment: MainAxisAlignment.end,
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: (isDesktop) ? 24 : 16),
              decoration: BoxDecoration(
                color: _fabHover
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.primary,
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
              child: (isDesktop)
               ? Text(
                  "Contact Me",
                  style: GoogleFonts.roboto(
                    color: _fabHover
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Icon(
                Icons.contact_mail,
                color: _fabHover 
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary,
              )
            ),
          ),
        ),
      ),
    );
  }
}
