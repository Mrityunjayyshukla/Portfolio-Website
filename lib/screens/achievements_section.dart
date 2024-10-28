import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/certificate_card.dart';

class AchievementsSection extends StatefulWidget {
  const AchievementsSection({super.key});

  @override
  State<AchievementsSection> createState() => _AchievementsSectionState();
}

class _AchievementsSectionState extends State<AchievementsSection> {
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
              "Certificates".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            SizedBox(
              height: 700,
              child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent: 340,
                  ),
                  itemBuilder: (context, index) {
                    return const CertificateCard();
                  }),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
