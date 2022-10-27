import 'package:flutter/material.dart';

class ShowHabits extends StatelessWidget {
  final Widget child;
  final String text;
  const ShowHabits({Key? key, required this.child, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 200,
      child: Column(
        children: [
          SizedBox(height: 150, width: 180, child: child),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
