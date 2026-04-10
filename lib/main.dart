import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('News', style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Text('Pick your category f interest'),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  NewsCard(color: Colors.redAccent, text: 'football'),
                  NewsCard(color: Colors.redAccent, text: 'oouyfootball'),
                  NewsCard(color: Colors.redAccent, text: 'football'),
                  NewsCard(color: Colors.redAccent, text: 'football'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String text;
  final Color color;
  const NewsCard({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      width: 100,
      height: 200,
      child: Column(
        children: [Image.asset('assets/log.png', width: 100), Text(text)],
      ),
    );
  }
}
