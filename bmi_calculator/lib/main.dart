import 'package:flutter/material.dart';
import 'screens/input_page.dart';


void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A0E21),
          secondary: const Color(0xFF800080),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home:const InputPage(),
    );
  }
}



