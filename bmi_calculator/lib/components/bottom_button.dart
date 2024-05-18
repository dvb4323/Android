import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, this.onTap, this.bottomTitle = '',});
  final VoidCallback? onTap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.only(bottom: 5.0),
        color: bottomContainerColour,
        margin: const EdgeInsets.only(
          top: 10.0,
        ),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child:  Text(
            bottomTitle,
            style: largeButtonTextStyle,
          ),
        ),
      ),

    );
  }
}