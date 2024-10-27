import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class ProjectsCarousel extends StatelessWidget {
  final InfiniteScrollController controller;
  const ProjectsCarousel({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: InfiniteCarousel.builder(
        controller: controller,
        itemCount: 5,
        itemExtent: 500,
        velocityFactor: 0.1,
        center: true,
        anchor: 0,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index, realindex) {
          return const ProjectCard();
        },
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isCardHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        _isCardHovered = true;
      }),
      onExit: (event) => setState(() {
        _isCardHovered = false;
      }),
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: const Color.fromARGB(255, 209, 209, 209), width: 0.5),
            boxShadow: const [
              BoxShadow(
                offset: Offset(10, 10),
                color: Color(0xFFA7A9AF),
                blurRadius: 5,
              ),
              BoxShadow(
                offset: Offset(-10, -10),
                color: Colors.white,
                blurRadius: 5,
              )
            ]),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _isCardHovered ? Colors.transparent : Colors.grey,
                  BlendMode.saturation,
                ),
                child: Image.asset(
                  'images/bedroom_project.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              child: _isCardHovered
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Hello World",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollButtons extends StatefulWidget {
  final IconData icon;
  final Function() onTap;
  const ScrollButtons({super.key, required this.icon, required this.onTap});

  @override
  State<ScrollButtons> createState() => _ScrollButtonsState();
}

class _ScrollButtonsState extends State<ScrollButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: const Color.fromARGB(255, 209, 209, 209), width: 0.5),
          boxShadow: const [
            BoxShadow(
              offset: Offset(5, 5),
              color: Color(0xFFA7A9AF),
              blurRadius: 5,
            ),
            BoxShadow(
              offset: Offset(-5, -5),
              color: Colors.white,
              blurRadius: 5,
            )
          ],
        ),
        child: Center(child: Icon(widget.icon)),
      ),
    );
  }
}
