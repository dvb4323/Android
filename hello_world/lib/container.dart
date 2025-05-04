import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Container App',
    home: ContainerExample(),
  ));
}

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 48.0,
        height: 48.0,
        color: Colors.amberAccent,
      ),
    );
  }
}
