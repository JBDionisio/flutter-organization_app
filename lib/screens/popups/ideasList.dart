import 'package:flutter/material.dart';

class IdeasList extends StatefulWidget {
  @override
  _IdeasListState createState() => _IdeasListState();
}

class _IdeasListState extends State<IdeasList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('New Idea'),
        backgroundColor: Color.fromRGBO(59, 82, 122, 1.0),
        actions: [
          new FlatButton(
              onPressed: () {
                Navigator
                    .of(context)
                    .pop();
              },
              child: new Text('SAVE',
                  style: Theme
                      .of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white))),
        ],
      ),
      body: new Text("just a text"),
    );
  }
}
