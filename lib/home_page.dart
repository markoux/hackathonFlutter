import 'package:flutter/material.dart';

import 'http_utils.dart';
import 'news_feed.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> tabNames = const <String>[
    'News Feed',
    'Community',
    'Tutorials',
  ];

  @override
  void initState() {
    _tabController = TabController(length: tabNames.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            )
          ],
        )),
        appBar: AppBar(
          title: Container(
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    labelStyle:
                        TextStyle(textBaseline: TextBaseline.alphabetic),
                    prefixIcon: Icon(Icons.search),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white),
              )),
          bottom: TabBar(
            isScrollable: false,
            tabs: new List.generate(tabNames.length, (index) {
              return new Tab(text: tabNames[index].toUpperCase());
            }),
            onTap: (i) {},
            controller: _tabController,
          ),
        ),
        body: TabBarView(controller: _tabController, children: [
          NewsFeed(),
          Container(),
          Container()
        ]));
  }
}
