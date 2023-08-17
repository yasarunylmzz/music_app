import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
              fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
        Text('View More',
            style: GoogleFonts.montserrat(
                fontSize: 16.sp, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
