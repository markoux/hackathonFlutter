import 'package:flutter/material.dart';

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
    'Page1',
    'Page2',
    'Page3',
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
    final double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      drawer: Drawer(
        child: Container(),
      ),
      appBar: AppBar(
        title: Container(
            height: 30,
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  labelStyle: TextStyle(textBaseline: TextBaseline.alphabetic),
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
          onTap: (i) {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          controller: _tabController,
        ),
      ),
      body: Container(
      ),
    );
  }
}
