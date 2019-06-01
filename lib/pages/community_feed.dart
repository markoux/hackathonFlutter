import 'package:flutter/material.dart';
import 'package:flutterhackathon/bloc/post_bloc.dart';
import 'package:flutterhackathon/widget/community_widget.dart';

class CommunityFeed extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CommunityFeedState();
  }

}

class CommunityFeedState extends State<CommunityFeed> {
  Future<List<String>> names;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(builder: (context, snapshot) {
      if (snapshot.hasData) {
        return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext builderContext, int index) {
              return Center(child: CommunityWidget(snapshot.data[index]));
            });
      }
      return Center(child: CircularProgressIndicator());
    }, future: names);
  }

  @override
  void initState() {
    names = postBloc.getNames();
    super.initState();
  }


}