import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CertificateCard extends StatelessWidget {
  const CertificateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Certificate Name",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Certificate Authority",
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
