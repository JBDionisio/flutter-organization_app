import 'package:flutter/material.dart';

class IdeasList extends StatefulWidget {
  @override
  _IdeasListState createState() => _IdeasListState();
}

class _IdeasListState extends State<IdeasList> {

  Color _color = Colors.blue[700];
  IconData _icon = Icons.wb_incandescent;


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
            new Container(
              padding: EdgeInsets.only(left: 40.0, right:40.0, bottom: 20.0),
              //color: Colors.black,
              child: Center(
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: _color,
                  child: Icon(_icon,
                      size: 35.0, color: Colors.white),
                ),
              ),

            ),
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  height: 60.0,
                  padding: EdgeInsets.only(left: 20.0, right:16.0),
                  child: _icons(),
                )
              ],
            ),
            new Stack(
              children: <Widget>[
                new Container(
                  height: 60.0,
                  padding: EdgeInsets.only(left: 20.0, right:16.0),
                  child: _colors(),
                )
              ],
            ),

          ],
        ),
      )
    );
  }

  Widget _icons() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            setState(() {
              _icon = Icons.build;
            });
          },
          child: CircleAvatar(
              child: Icon(Icons.build)
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _icon = Icons.wb_incandescent;
            });
          },
          child: CircleAvatar(
              child: Icon(Icons.wb_incandescent)
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _icon = Icons.laptop_mac;
            });
          },
          child: CircleAvatar(
              child: Icon(Icons.laptop_mac)
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _icon = Icons.alarm;
            });
          },
          child: CircleAvatar(
              child: Icon(Icons.alarm)
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _icon = Icons.call;
            });
          },
          child: CircleAvatar(
              child: Icon(Icons.call)
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _icon = Icons.home;
            });
          },
          child: CircleAvatar(
              child: Icon(Icons.home)
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _icon = Icons.audiotrack;
            });
          },
          child: CircleAvatar(
              child: Icon(Icons.audiotrack)
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _icon = Icons.done_all;
            });
          },
          child: CircleAvatar(
              child: Icon(Icons.done_all)
          ),
        ),
      ],
    );
  }
  Widget _colors() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            setState(() {
              _color = Colors.blue;
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.blue,
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _color = Colors.blue[700];
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.blue[700],
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _color = Colors.greenAccent;
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.greenAccent,
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _color = Colors.green;
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.green,
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _color = Colors.amber;
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.amber,
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _color = Colors.red;
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _color = Colors.deepPurple;
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.deepPurple,
          ),
        ),
        SizedBox(width: 7.0,),

        GestureDetector(
          onTap: (){
            setState(() {
              _color = Colors.black;
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.black,
          ),
        ),
      ],
    );
  }

}
