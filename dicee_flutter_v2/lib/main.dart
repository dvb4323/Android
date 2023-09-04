import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     int leftDiceNumber = 2;
//
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: TextButton(
//               child: Image.asset('images/dice$leftDiceNumber.png'),
//               style: TextButton.styleFrom(
//                 padding: const EdgeInsets.all(16.0),
//               ),
//               onPressed: () {
//                 print('Left Button got pressed');
//               },
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               child: Image.asset('images/dice1.png'),
//               style: TextButton.styleFrom(
//                 padding: const EdgeInsets.all(16.0),
//               ),
//               onPressed: () {
//                 print('Right Button got pressed');
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceNumber(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

