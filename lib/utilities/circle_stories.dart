import 'package:flutter/material.dart';

class CircleStories extends StatelessWidget {
  final String text;

  CircleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purpleAccent,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(text)
        ],
      ),
    );
  }
}
