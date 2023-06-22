import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

final List<String> urls = [
  'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80',
  'https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60',
  'https://images.unsplash.com/photo-1509281373149-e957c6296406?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60',
  'https://images.unsplash.com/photo-1459411552884-841db9b3cc2a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHJhbmRvbXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'
];

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Photo viewer', home: GalleryPage(title:'image Gallery',urls:urls));
  }
}

class GalleryPage extends StatelessWidget {
  final String title;
  final List<String> urls;
  const GalleryPage({super.key, required this.title, required this.urls});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: GridView.count(
          primary: false,
          crossAxisCount: 2,
          children: List.of(urls
              .map((url) => Photo(url: url)))),
    );
  }
}

class Photo extends StatelessWidget {
  final String url;
  const Photo({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Image.network(url);
  }
}
