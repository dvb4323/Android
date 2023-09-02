import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text('Good Morning'),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: const Image(
          image: NetworkImage(
              'https://media.istockphoto.com/id/870045286/photo/lazy-man-happy-waking-up-in-the-bed-rising-hands-to-window-in-the-morning-with-fresh-feeling.jpg?s=612x612&w=0&k=20&c=ialBTWRrbLmryXHhohHEGVccUEO-TdxZAx9nsUBodJ8=')),
    ),
  ));
}
