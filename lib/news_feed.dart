import 'package:flutter/material.dart';

import 'news_feed_widget.dart';

class NewsFeed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewsFeedState();
  }

}

class NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NewsFeedWidget()
      ],
    );
  }

}