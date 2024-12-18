// ignore_for_file: use_build_context_synchronously
import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/about_section.dart';
import 'package:portfolio/screens/achievements_section.dart';
import 'package:portfolio/screens/projects_section.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/theme_provider.dart';
import 'package:portfolio/widgets/bottom_nav_bar.dart';
import 'package:portfolio/screens/name_title.dart';
import 'package:portfolio/widgets/contact_textfield.dart';
import 'package:portfolio/widgets/left_panel.dart';
import 'package:portfolio/widgets/neumorphism_button.dart';
import 'package:provider/provider.dart';
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

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  bool _fabHover = false;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    double appBarOptionFontSize;
    double memojiSize;
    if (isDesktop) {
      appBarOptionFontSize = 24;
      memojiSize = 100;
    } else if (isTablet) {
      appBarOptionFontSize = 21;
      memojiSize = 90;
    } else {
      appBarOptionFontSize = 18;
      memojiSize = 80;
    }
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(right: 36.0, left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (!isDesktop)
                Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        size: (isMobile) ? 24 : 32,
                      ),
                    );
                  },
                )
              else
                const SizedBox.shrink(),
              Image.asset(
                "assets/memoji.png",
                height: memojiSize,
                width: memojiSize,
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                    },
                    icon: isDarkMode ? const Icon(Icons.dark_mode) : const Icon(Icons.light_mode),
                  ),
                  const SizedBox(width: 32),
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
                      onTap: () {
                        const resumeLink =
                            "https://drive.google.com/file/d/1Frtg9RPMcv24rWdtQUUR7zVcDjI_KASN/view?usp=drivesdk";
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
                            fontSize: appBarOptionFontSize,
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
                        const linkedInLink =
                            "https://www.linkedin.com/in/mrityunjayyshukla";
                        launchUrl(Uri.parse(linkedInLink),
                            mode: LaunchMode.inAppBrowserView);
                      },
                      child: AnimatedScale(
                        scale: _isHovered2 ? 1.1 : 1,
                        curve: Curves.easeInOut,
                        duration: const Duration(milliseconds: 80),
                        child: Text(
                          "LinkedIn",
                          style: GoogleFonts.roboto(
                            fontSize: appBarOptionFontSize,
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

      drawer: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Drawer(
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Center(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                children: <Widget>[
                  const SizedBox(height: 80),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    onTap: () {
                      launchUrl(
                        Uri.parse("https://www.behance.net/mrityunjayshukla"),
                        mode: LaunchMode.inAppBrowserView,
                      );
                    },
                    title: Text(
                      "Behance",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    leading: NeumorphismButton(
                      link: "https://www.behance.net/mrityunjayshukla",
                      child: SvgPicture.asset(
                        "assets/icons/behance.svg",
                        height: 32,
                        width: 32,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    onTap: () {
                      launchUrl(
                        Uri.parse("https://www.artstation.com/mrityunjay_2003"),
                        mode: LaunchMode.inAppBrowserView,
                      );
                    },
                    title: Text(
                      "Artstation",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    leading: NeumorphismButton(
                        link: "https://www.artstation.com/mrityunjay_2003",
                        child: SvgPicture.asset(
                          "assets/icons/artstation.svg",
                          height: 32,
                          width: 32,
                        )),
                  ),
                  const SizedBox(height: 24),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    onTap: () {
                      launchUrl(
                        Uri.parse("https://github.com/Mrityunjayyshukla"),
                        mode: LaunchMode.inAppBrowserView,
                      );
                    },
                    title: Text(
                      "GitHub",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    leading: NeumorphismButton(
                        link: "https://github.com/Mrityunjayyshukla",
                        child: SvgPicture.asset(
                          "assets/icons/github.svg",
                          height: 32,
                          width: 32,
                        )),
                  ),
                  const SizedBox(height: 24),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                            "https://x.com/mrityunjayys?t=oxt-BjNbsh8tgCbsdh2Nw&s=09"),
                        mode: LaunchMode.inAppBrowserView,
                      );
                    },
                    title: Text(
                      "Twitter/X",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    leading: NeumorphismButton(
                        link:
                            "https://x.com/mrityunjayys?t=oxt-BjNbsh8tgCbsdh2Nw&s=09",
                        child: SvgPicture.asset(
                          "assets/icons/twitter.svg",
                          height: 32,
                          width: 32,
                        )),
                  ),
                  const SizedBox(height: 24),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                            "https://www.linkedin.com/in/mrityunjayyshukla"),
                        mode: LaunchMode.inAppBrowserView,
                      );
                    },
                    title: Text(
                      "LinkedIn",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    leading: NeumorphismButton(
                        link: "https://www.linkedin.com/in/mrityunjayyshukla",
                        child: SvgPicture.asset(
                          "assets/icons/linkedin.svg",
                          height: 32,
                          width: 32,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: isDesktop
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            if (isDesktop) const LeftPanel(),
            _widgetOptions[_selectedIndex],
            if (isDesktop) const SizedBox(height: 80)
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
                        ContactTextfield(
                            controller: nameController,
                            hintText: "Enter Full Name"),
                        const SizedBox(height: 16),
                        ContactTextfield(
                            controller: emailController,
                            hintText: "Email Address"),
                        const SizedBox(height: 16),
                        ContactTextfield(
                          controller: subjectController,
                          hintText: "Subject",
                        ),
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
                            color: Theme.of(context).colorScheme.primary,
                            border: Border.all(
                                width: 2,
                                color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: TextField(
                            controller: messageController,
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
                          onTap: _sendEmail,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 24),
                            child: Text(
                              "Submit",
                              style: GoogleFonts.roboto(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              padding: EdgeInsets.symmetric(
                  vertical: 16, horizontal: (isDesktop) ? 24 : 16),
              decoration: BoxDecoration(
                color: _fabHover
                    ? Theme.of(context).colorScheme.surface
                    : Theme.of(context).colorScheme.primary,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 24,
                    color: Theme.of(context).colorScheme.shadow,
                    offset: const Offset(10, 10),
                  ),
                  BoxShadow(
                    blurRadius: 24,
                    color: Theme.of(context).colorScheme.surface,
                    offset: const Offset(-10, -10),
                  ),
                ],
                borderRadius: BorderRadius.circular(40),
              ),
              child: (!isMobile)
                  ? Text(
                      "Contact Me",
                      style: GoogleFonts.roboto(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Icon(
                      Icons.contact_mail,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
            ),
          ),
        ),
      ),
    );
  }

  void _sendEmail() async {
    try {
      const publicKey = String.fromEnvironment("PUBLIC_KEY");
      const privateKey = String.fromEnvironment("PRIVATE_KEY");
      const serviceId = String.fromEnvironment("SERVICE_ID");
      const templateId = String.fromEnvironment("TEMPLATE_ID");

      // Collect the values entered in the text fields
      final name = nameController.text.trim();
      final email = emailController.text.trim();
      final subject = subjectController.text.trim();
      final message = messageController.text.trim();

      await emailjs.send(
        serviceId,
        templateId,
        {
          'from_name': name, // Use name from the controller
          'user_email': email, // Use email from the controller
          'user_subject': subject, // Use subject from the controller
          'message': message, // Use message from the controller
          'to_name': "Mrityunjay Shukla",
        },
        const emailjs.Options(
          publicKey: publicKey,
          privateKey: privateKey,
          limitRate: emailjs.LimitRate(
            id: 'app',
            throttle: 10000,
          ),
        ),
      );

      // After successfully sending the email, clear the text fields
      nameController.clear();
      emailController.clear();
      subjectController.clear();
      messageController.clear();

      // Show success snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email sent successfully!'),
          duration: Duration(seconds: 3),
        ),
      );
      Navigator.pop(context);

      // print('SUCCESS!');
    } catch (error) {
      if (error is emailjs.EmailJSResponseStatus) {
        // print('ERROR... $error');
        // Show error snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to send email. Please try again.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
      // print(error.toString());
    }
  }
}
