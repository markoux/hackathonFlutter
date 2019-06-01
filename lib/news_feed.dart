import 'package:flutter/material.dart';
import 'package:flutterhackathon/post.dart';

import 'http_utils.dart';
import 'news_feed_widget.dart';

class NewsFeed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewsFeedState();
  }

}

class NewsFeedState extends State<NewsFeed> {
  Future<Post> posts;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Post>(builder: (context, snapshot) {
      if (snapshot.hasData) {
        return ListView.builder(
            itemCount: snapshot.data.statuses.length,
            itemBuilder: (BuildContext builderContext, int index) {
              return Center(child: NewsFeedWidget(snapshot.data.statuses[index]));
            });
      }
      return Center(child: CircularProgressIndicator());
    }, future: posts);
  }

  @override
  void initState() {
    posts = HttpUtils().getPosts();
    super.initState();
  }
}