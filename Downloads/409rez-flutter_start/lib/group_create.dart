import 'package:flutter/material.dart';

class GroupCreateSection extends StatefulWidget {
  @override
  _GroupCreateSectionState createState() => new _GroupCreateSectionState();
}

class _GroupCreateSectionState extends State<GroupCreateSection> {
  final TextEditingController _controller = new TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Flexible(
            child: new TextField(
              decoration: new InputDecoration(
                hintText: 'Search',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
              controller: _controller,
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: new FloatingActionButton(
              onPressed: () {
                print('Typed: ${_controller.text}');
                _controller.clear();
              },
              child: new Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
