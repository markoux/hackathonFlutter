import 'package:flutter/material.dart';
import 'package:flutterhackathon/bloc/post_bloc.dart';
import 'package:flutterhackathon/model/post.dart';
import 'package:flutterhackathon/widget/news_feed_widget.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

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
        return LiquidPullToRefresh(
          onRefresh: _handleRefresh,	// refresh callback
          child: ListView.builder(
              itemCount: snapshot.data.statuses.length,
              itemBuilder: (BuildContext builderContext, int index) {
                return Center(child: NewsFeedWidget(snapshot.data.statuses[index]));
              }),		// scroll view
        );
      }
      return Center(child: CircularProgressIndicator());
    }, future: posts);
  }

  @override
  void initState() {
    posts = postBloc.getPosts(false);
    super.initState();
  }

  Future<void> _handleRefresh() {
    posts = postBloc.getPosts(true);
    return posts;
  }
}