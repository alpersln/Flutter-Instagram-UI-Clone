import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utilities/shop_explore_grid.dart';

class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //search
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Container(
            padding: EdgeInsets.all(6),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Container(
                  child: Text(
                    "Search",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ShopGrid(),
    );
  }
}
