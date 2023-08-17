import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.song,
  });

  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song');
      },
      child: Container(
        margin: EdgeInsets.only(right: 10.w),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            width: (MediaQuery.of(context).size.width * 0.43).w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0).w,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(song.coverUrl))),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 60.h,
            width: MediaQuery.of(context).size.width * 0.35.w,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12).w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12).w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        song.title,
                        style: GoogleFonts.montserrat(
                            color: Colors.deepPurple.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        song.description,
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_circle_rounded,
                      color: Colors.deepPurple.shade800,
                      size: 28.w,
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
