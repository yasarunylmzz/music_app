import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/models/song_model.dart';
import 'package:music_app/widgets/playlist_card.dart';
import 'package:music_app/widgets/song_card.dart';

import '../models/playlist_model.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Playlists> playlist = Playlists.playlist;
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.deepPurple.shade800.withOpacity(0.8),
              Colors.deepPurple.shade200.withOpacity(0.8)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const _CustomAppBar(),
          bottomNavigationBar: const _customBottomNavigationBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const _discoverMusic(),
                _TrendingMusic(songs: songs),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      const SectionHeader(title: 'Playlists'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return PlaylistCard(playlist: playlist[index]);
                          },
                          itemCount: playlist.length,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class _TrendingMusic extends StatelessWidget {
  const _TrendingMusic({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20).w,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SectionHeader(title: 'Trending Music'),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return SongCard(song: songs[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}

class _discoverMusic extends StatelessWidget {
  const _discoverMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0).h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Yasar 🙌',
            style: GoogleFonts.montserrat(
                fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Enjoy your favorite music',
            style: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              constraints: BoxConstraints(maxHeight: 55.h),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade400),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade400,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17.0),
                  borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }
}

class _customBottomNavigationBar extends StatelessWidget {
  const _customBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.purple.shade800,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 24.0.w,
        items: [
          const BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          const BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.bookmarks),
          ),
          const BottomNavigationBarItem(
            label: 'Play',
            icon: Icon(Icons.play_circle_outlined),
          ),
          const BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.people_outline),
          ),
        ]);
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20.h),
          child: const CircleAvatar(
            child: Text(
              'YÜ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0.h);
}
