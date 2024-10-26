import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class ProjectsCarousel extends StatelessWidget {
  const ProjectsCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: InfiniteCarousel.builder(
        itemCount: 5, 
        itemExtent: 400,
        velocityFactor: 0.1, 
        center: true,
        anchor: 0,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index, realindex) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            color: Colors.red,
            child: Text("Jello"),
          );
        },
      ),
    );
  }
}