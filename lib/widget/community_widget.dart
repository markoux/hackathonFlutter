import 'package:flutter/material.dart';

class CommunityWidget extends StatefulWidget{
  final String name;
  CommunityWidget(this.name);

  @override
  State<StatefulWidget> createState() {
    return CommunityWidgetState(name);
  }

}

class CommunityWidgetState extends State<CommunityWidget> {
  String name;


  CommunityWidgetState(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Card(
            elevation: 20,
            child: Container(
              height: 100,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                      NetworkImage('https://i0.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png?fit=256%2C256&quality=100&ssl=1'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(width: 10),
                    Text(name)
                  ],
                ))));
  }
}
