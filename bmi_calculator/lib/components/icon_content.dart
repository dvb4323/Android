import 'package:flutter/material.dart';
import '../constant.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({super.key, this.gender, this.label = ''});
  final IconData? gender;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          size: 60.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}