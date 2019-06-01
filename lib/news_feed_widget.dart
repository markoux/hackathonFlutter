import 'package:flutter/material.dart';

class NewsFeedWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewsFeedWidgetState();
  }
}

class NewsFeedWidgetState extends State {
  bool _favourite = false;


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
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(child: Text(
                          'A very big title',
                          softWrap: true,
                          style: TextStyle(fontSize: 25),
                        ),),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
                          'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis '
                          'nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                          'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu '
                          'fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia '
                          'deserunt mollit anim id est laborum.',
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            this._favourite ? Icons.favorite : Icons.favorite_border,
                            color: this._favourite ? Colors.red : Colors.grey,
                          ),onPressed: () {
                          setState(() {
                            this._favourite = !this._favourite;
                          });
                        },),
                        IconButton(
                          icon: Icon(
                            Icons.comment,
                          ),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ))));
  }
}
