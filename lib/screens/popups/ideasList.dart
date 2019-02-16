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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  height: 60.0,
                  padding: EdgeInsets.only(left: 19.8, right:19.8),
                  child: _icons(),
                )
              ],
            ),
            new Stack(
              children: <Widget>[
                new Container(
                  height: 60.0,
                  padding: EdgeInsets.only(left: 19.8, right:19.8),
                  child: _colors(),
                )
              ],
            )
          ],
        ),
      )
    );
  }

  Widget _icons() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CircleAvatar(
            child: Icon(Icons.build)
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
            child: Icon(Icons.wb_incandescent)
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
            child: Icon(Icons.laptop_mac)
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
            child: Icon(Icons.alarm)
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
            child: Icon(Icons.call)
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
            child: Icon(Icons.home)
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
            child: Icon(Icons.audiotrack)
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
            child: Icon(Icons.done_all)
        ),
        SizedBox(width: 7.0,),
      ],
    );
  }
  Widget _colors() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CircleAvatar(
            backgroundColor: Colors.blue,
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
          backgroundColor: Colors.black,
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
          backgroundColor: Colors.tealAccent,
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
          backgroundColor: Colors.deepPurple,
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
          backgroundColor: Colors.amber,
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
          backgroundColor: Colors.lightGreenAccent,
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
          backgroundColor: Colors.red,
        ),
        SizedBox(width: 7.0,),
        CircleAvatar(
          backgroundColor: Colors.blueAccent,
        ),
      ],
    );
  }

}
