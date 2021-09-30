import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name, quotes;
  UserPosts({required this.name, required this.quotes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black12),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey,
        ),
        //below post like button,comment
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        //who liked
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Text("Liked by "),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(" and "),
              Text(
                "others...",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        //post description
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: quotes),
              ],
            ),
          ),
        )
      ],
    );
  }
}
