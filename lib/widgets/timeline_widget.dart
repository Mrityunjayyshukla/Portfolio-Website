import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'; 
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/experience_data.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineCustomWidget extends StatelessWidget {
  const TimelineCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TimelineTile(
        afterLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        indicatorStyle: IndicatorStyle(
            indicator: SvgPicture.asset(
          "icons/down_arrow.svg",
          height: 24,
          width: 24,
        )),
        alignment: TimelineAlign.center,
        isFirst: true,
      ),
      SizedBox(
        height: 264,
        child: TimelineTile(
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          afterLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          alignment: TimelineAlign.center,
          isFirst: false,
          indicatorStyle: IndicatorStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          startChild: TimelineCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experienceData[0].title,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  experienceData[0].time,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  experienceData[0].description,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 264,
        child: TimelineTile(
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          afterLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          alignment: TimelineAlign.center,
          isFirst: false,
          indicatorStyle: IndicatorStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          endChild: TimelineCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experienceData[1].title,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  experienceData[1].time,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  experienceData[1].description,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 264,
        child: TimelineTile(
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          afterLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          alignment: TimelineAlign.center,
          isFirst: false,
          indicatorStyle: IndicatorStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          startChild: TimelineCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experienceData[2].title,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  experienceData[2].time,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  experienceData[2].description,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      TimelineTile(
        beforeLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        alignment: TimelineAlign.center,
        isLast: true,
        indicatorStyle: IndicatorStyle(
            indicator: SvgPicture.asset(
          "icons/up_arrow.svg",
          height: 24,
          width: 24,
        )),
      ),
    ]);
  }
}

class TimelineCard extends StatelessWidget {
  final Widget child;
  const TimelineCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 60, left: 32),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 209, 209, 209), width: 0.5),
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            blurRadius: 20,
            offset: Offset(-10, -10),
            color: Colors.white,
            inset: false,
          ),
          BoxShadow(
            blurRadius: 20,
            offset: Offset(10, 10),
            color: Color(0xFFA7A9AF),
            inset: false,
          )
        ]
      ),
      child: child,
    );
  }
}