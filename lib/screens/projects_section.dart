import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:portfolio/widgets/projects_carousel.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final InfiniteScrollController _controllerProgramming = InfiniteScrollController();
  final InfiniteScrollController _controllerUIUX = InfiniteScrollController();
  final InfiniteScrollController _controller3D = InfiniteScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width / 1.28,
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
            ProjectsCarousel(
              controller: _controllerProgramming,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: (){
                  _controllerProgramming.previousItem(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                }, child: Icon(Icons.arrow_back_ios)),
                ElevatedButton(onPressed: (){
                  _controllerProgramming.nextItem(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                }, child: Icon(Icons.arrow_forward_ios)),
              ],
            ),
            const SizedBox(height: 48),
            Text(
              "UI/UX Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 24, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            
            ProjectsCarousel(
              controller: _controllerUIUX,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: (){
                  _controllerUIUX.previousItem(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                }, child: Icon(Icons.arrow_back_ios)),
                ElevatedButton(onPressed: (){
                  _controllerUIUX.nextItem(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                }, child: Icon(Icons.arrow_forward_ios)),
              ],
            ),
            const SizedBox(height: 48),
            Text(
              "3D Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 24, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            ProjectsCarousel(
              controller: _controller3D,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: (){
                  _controller3D.previousItem(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                }, child: Icon(Icons.arrow_back_ios)),
                ElevatedButton(onPressed: (){
                  _controller3D.nextItem(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                }, child: Icon(Icons.arrow_forward_ios)),
              ],
            ),
            SizedBox(height: 100),
            
          ],
        ),
      ),
    );
  }
}