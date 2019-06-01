import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingsPageState();
  }
}

class SettingsPageState extends State<SettingsPage> {

  bool _facebook = false;
  bool _twitter = false;
  bool _reddit = false;
  bool _meetup = false;


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
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 10),
              Text('Source:'),
              CheckboxListTile(
                  title: Text('Facebook'),
                  dense: true,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _facebook,
                  onChanged: (value) {
                    setState(() {
                      _facebook = !_facebook;
                    });
                  }),
              CheckboxListTile(
                  title: Text('Twitter'),
                  dense: true,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _twitter,
                  onChanged: (value) {
                    setState(() {
                      _twitter = !_twitter;
                    });
                  }),
              CheckboxListTile(
                  title: Text('Reddit'),
                  dense: true,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _reddit,
                  onChanged: (value) {
                    setState(() {
                      _reddit = !_reddit;
                    });
                  }),
              CheckboxListTile(
                  title: Text('Meetup'),
                  dense: true,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _meetup,
                  onChanged: (value) {
                    setState(() {
                      _meetup = !_meetup;
                    });
                  }),
            ],
          )),
    );
  }
}
