import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_app/models/song_model.dart';
import 'package:music_app/screens/home_screen.dart';
import 'package:music_app/screens/playlist_screen.dart';
import 'package:music_app/screens/song_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPrint('${MediaQuery.of(context).size.width * 0.6}');
    debugPrint(MediaQuery.of(context).size.height.toString());
    return ScreenUtilInit(
      designSize: const Size(401.14285714285717, 891.4285714285714),
      // splitScreenMode: true,
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                textTheme: Theme.of(context).textTheme.apply(
                    bodyColor: Colors.white, displayColor: Colors.white)),
            home: const HomeScreen(),
            getPages: [
              GetPage(
                name: '/',
                page: () => const HomeScreen(),
              ),
              GetPage(
                name: '/song',
                page: () => const SongScreen(),
              ),
              GetPage(
                name: '/playlist',
                page: () => const SongScreen(),
              )
            ]);
      },
    );
  }
}
// 411.42857142857144 widht
// 843.4285714285714 height