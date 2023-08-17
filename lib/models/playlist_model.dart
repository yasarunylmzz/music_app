// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'song_model.dart';

class Playlists {
  final String title;
  final List<Song> songs;
  final String imageUrl;
  Playlists({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlists> playlist = [
    Playlists(
        title: 'Turkish',
        songs: Song.songs,
        imageUrl:
            'https://images.unsplash.com/photo-1509114397022-ed747cca3f65?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80'),
    Playlists(
        title: 'Chill',
        songs: Song.songs,
        imageUrl:
            'https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'),
    Playlists(
        title: 'R&B MİX',
        songs: Song.songs,
        imageUrl:
            'https://images.unsplash.com/photo-1594623930572-300a3011d9ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'),
    Playlists(
        title: 'Rock & Roll',
        songs: Song.songs,
        imageUrl:
            'https://images.unsplash.com/photo-1582220107107-590dc8b0fad3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80'),
    Playlists(
        title: 'Arabesk',
        songs: Song.songs,
        imageUrl:
            'https://images.unsplash.com/photo-1567095761054-7a02e69e5c43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80'),
    Playlists(
        title: 'HipHop',
        songs: Song.songs,
        imageUrl:
            'https://images.unsplash.com/photo-1508700115892-45ecd05ae2ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80'),
  ];
}
