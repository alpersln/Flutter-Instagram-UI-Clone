import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utilities/circle_stories.dart';
import 'package:instagram_ui_clone/utilities/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    "alper",
    "james",
    "mary",
    "john",
    "sarah",
    "daniel",
    "laura"
  ];
  final List quotes = [
    " Two most important days in your life are the day you are born and the day you find out why -Mark Twain  #book#coffee#mood#morning",
    " Life is not a problem to be solved, but a reality to be experienced. -Soren Kierkegaard",
    " Too often we underestimate the power of a touch, a smile, a kind word, a listening ear, an honest compliment, or the smallest act of caring, all of which have the potential to turn a life around. -Leo Buscaglia",
    "Remember your dreams and fight for them. You must know what you want from life. There is just one thing that makes your dream become impossible: the fear of failure. -Paulo Coelho",
    " When life is too easy for us, we must beware or we may not be ready to meet the blows which sooner or later come to everyone, rich or poor. -Eleanor Roosevelt",
    " Life's most persistent and urgent question is, 'What are you doing for others? -Martin Luther King, Jr.",
    " The greatest day in your life and mine is when we take total responsibility for our attitudes. That's the day we truly grow up. - John C. Maxwell",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return CircleStories(text: people[index]);
                }),
          ),
          //posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                    quotes: quotes[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
