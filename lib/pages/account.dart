import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utilities/account_tab1.dart';
import 'package:instagram_ui_clone/utilities/account_tab2.dart';
import 'package:instagram_ui_clone/utilities/account_tab3.dart';
import 'package:instagram_ui_clone/utilities/account_tab4.dart';
import 'package:instagram_ui_clone/utilities/circle_stories.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //profile picture
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                ),
                //follower,following,posts count
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "247",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(color: Colors.grey[500]),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "1458",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(color: Colors.grey[500]),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "1071",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(color: Colors.grey[500]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //name and bio
          Padding(
            padding: const EdgeInsets.only(left: 22.0, top: 11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Alper Sln",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "I create mobile apps",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
                Text(
                  "github.com/alpersln",
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.blue),
                ),
              ],
            ),
          ),
          //edit buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(6),
                      child: Center(
                        child: Text("Edit Profile"),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(6),
                      child: Center(
                        child: Text("Ad Tools"),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(6),
                      child: Center(
                        child: Text("Insights"),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //profile stories
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
            child: Row(
              children: [
                CircleStories(text: "2021 summer"),
                CircleStories(text: "selfies"),
                CircleStories(text: "aesthetic"),
                CircleStories(text: "hiking"),
              ],
            ),
          ),
          //profile tabs
          TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.grid_3x3_outlined,
                color: Colors.black54,
              ),
            ),
            Tab(
              icon: Icon(Icons.video_call, color: Colors.black54),
            ),
            Tab(
              icon: Icon(Icons.shop, color: Colors.black54),
            ),
            Tab(
              icon: Icon(Icons.person, color: Colors.black54),
            ),
          ]),
          Expanded(
              child: TabBarView(
            children: [
              AccountTab1(),
              AccountTab2(),
              AccountTab3(),
              AccountTab4(),
            ],
          ))
        ],
      )),
    );
  }
}
