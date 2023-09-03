import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50.0,
                  backgroundImage: AssetImage('images/totoro.png')),
              Text(
                'Do Van Binh',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSans3',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                  title: Text(
                    '0987654321',
                    style: TextStyle(
                      fontFamily: 'SourceSans3',
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                  title: Text(
                    'vanbinh4323@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SourceSans3',
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Sample Code for creating the layout in the images folder
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: <Widget>[
// Container(
// width: 100.0,
// height: double.infinity,
// color: Colors.red,
// ),
// Container(
// width: 100.0,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Container(
// width: 100.0,
// height: 100.0,
// color: Colors.yellow,
// ),
// Container(
// width: 100.0,
// height: 100.0,
// color: Colors.lightGreen,
// ),
// ],
// ),
// ),
// Container(
// width: 100.0,
// height: double.infinity,
// color: Colors.blue,
// ),
// ],

//Code for the second information row if I want to use Row widget
// child: Row(
// children: <Widget>[
// Icon(
// Icons.email,
// color: Colors.teal,
// size: 20.0,
// ),
// SizedBox(width: 10.0),
// Text(
// ' vanbinh4323@gmail.com ',
// style: TextStyle(
// fontFamily: 'SourceSans3',
// color: Colors.teal.shade300,
// fontSize: 20.0,
// fontWeight: FontWeight.bold,
// ),
// ),
// ],
// child: Padding(
// padding: EdgeInsets.all(10.0),
// child: Row(
// children: <Widget>[
// Icon(
// Icons.phone,
// color: Colors.teal,
// size: 20.0,
// ),
// SizedBox(width: 10.0),
// Text(
// '+ 98 123 456 789',
// style: TextStyle(
// fontFamily: 'SourceSans3',
// color: Colors.teal.shade300,
// fontSize: 20.0,
// fontWeight: FontWeight.bold,
// ),
// ),
// ],
// ),
// ),
