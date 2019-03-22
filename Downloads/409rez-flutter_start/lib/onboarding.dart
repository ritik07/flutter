import 'package:flutter/material.dart';
import './group_create.dart';
import './recent_groups.dart';



class Onboarding extends StatefulWidget {
  Onboarding({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<Onboarding> {
  final TextEditingController _controller = new TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
 
      body: new ListView(
        children: <Widget>[new GroupCreateSection(), new RecentGroupsSection(), new RecentSecondgroupSection()],
      ),
    );
  }
}
