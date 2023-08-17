import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/models/playlist_model.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    super.key,
    required this.playlist,
  });

  final Playlists playlist;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 15.w,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0).w,
            child: Image.network(
              playlist.imageUrl,
              height: 75.h,
              width: 75.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlist.title,
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  '${playlist.songs.length} songs',
                  maxLines: 2,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_circle_rounded,
              size: 32.w,
              color: Colors.deepPurple.shade100,
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10).w,
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        color: const Color(0xff65408C),
        borderRadius: BorderRadius.circular(12).w,
      ),
    );
  }
}
