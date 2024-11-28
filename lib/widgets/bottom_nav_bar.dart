import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  const BottomNavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool _resumeHover = false;
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isMobile = Responsive.isMobile(context);
    return LayoutBuilder(builder: (context, constraints) {
      double padding = isMobile ? constraints.maxWidth * 0.1 : constraints.maxWidth * 0.32;
      return Padding(
        padding: EdgeInsets.only(
          left: padding,
          right: padding, 
          bottom: 24,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: (!isDesktop) ? 24 : 60),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => widget.onItemTapped(0),
                child: SvgPicture.asset(
                  "icons/home.svg",
                  height: (isMobile) ? 28 : 32,
                  width: (isMobile) ? 28 : 32,
                  colorFilter: ColorFilter.mode(
                    widget.selectedIndex == 0
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.tertiary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => widget.onItemTapped(1),
                child: SvgPicture.asset(
                  "icons/about.svg",
                  height: (isMobile) ? 28 : 32,
                  width: (isMobile) ? 28 : 32,
                  colorFilter: ColorFilter.mode(
                    widget.selectedIndex == 1
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.tertiary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => widget.onItemTapped(2),
                child: SvgPicture.asset(
                  "icons/projects.svg",
                  height: (isMobile) ? 28 : 32,
                  width: (isMobile) ? 28 : 32,
                  colorFilter: ColorFilter.mode(
                    widget.selectedIndex == 2
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.tertiary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => widget.onItemTapped(3),
                child: SvgPicture.asset(
                  "icons/experiences.svg",
                  height: (isMobile) ? 28 : 32,
                  width: (isMobile) ? 28 : 32,
                  colorFilter: ColorFilter.mode(
                    widget.selectedIndex == 3
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.tertiary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              MouseRegion(
                onEnter: (event) {
                  setState(() {
                    _resumeHover = true;
                  });
                },
                onExit: (event) {
                  setState(() {
                    _resumeHover = false;
                  });
                },
                child: GestureDetector(
                  onTap: () {
                    const resumeLink = "https://drive.google.com/file/d/1Frtg9RPMcv24rWdtQUUR7zVcDjI_KASN/view?usp=drivesdk";
                    launchUrl(
                      Uri.parse(resumeLink),
                      mode: LaunchMode.inAppWebView,
                    );
                  },
                  child: SvgPicture.asset(
                    "icons/resume.svg",
                    height: (isMobile) ? 28 : 32,
                    width: (isMobile) ? 28 : 32,
                    colorFilter: ColorFilter.mode(
                      _resumeHover
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.tertiary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
