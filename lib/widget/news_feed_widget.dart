import 'package:flutter/material.dart';
import 'package:flutterhackathon/model/post.dart';

class NewsFeedWidget extends StatefulWidget {
  final Statuses statuses;

  NewsFeedWidget(this.statuses);

  @override
  State<StatefulWidget> createState() {
    return NewsFeedWidgetState(statuses);
  }
}

class NewsFeedWidgetState extends State {
  bool _favourite = false;
  Statuses statuses;

  NewsFeedWidgetState(this.statuses);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Card(
            elevation: 20,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 5),
                    Text(statuses.text,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text('Twitter'),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Text(statuses.user.name != null ? statuses.user.name : ' ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        IconButton(
                          icon: Icon(
                            this._favourite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: this._favourite ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              this._favourite = !this._favourite;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ))));
  }
}
