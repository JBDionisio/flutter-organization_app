import 'package:flutter/material.dart';
import 'package:organization_app/Model/Idea.dart';

class IdeasList extends StatefulWidget {
  @override
  _IdeasListState createState() => _IdeasListState();
}

class _IdeasListState extends State<IdeasList> {

  Color _color = Colors.blue[700];
  IconData _icon = Icons.wb_incandescent;
  final _titleController = TextEditingController();
  final _subTitleController = TextEditingController();

  Idea _buildIdea() {
    Idea _idea = new Idea(_titleController.text, _subTitleController.text,
        _color, _icon);

    return _idea;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('NEW IDEA',),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        centerTitle: true,
        actions: [
          new FlatButton(
              onPressed: () {
                Navigator
                    .of(context)
                    .pop(_buildIdea());
              },
              child: new Text('SAVE',
                  style: Theme
                      .of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: _color))),
        ],
      ),
      resizeToAvoidBottomPadding: true,
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 40.0, right:40.0,
                    bottom: 20.0, top: 50.0),
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

              Container(
                padding: EdgeInsets.only(left: 20.0, right: 16.0,
                    top: 20.0, bottom: 20.0),
                child: Theme(
                    data: new ThemeData(
                    primaryColor: _color,
                  ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                      textCapitalization: TextCapitalization.sentences,
                      controller: _titleController,
                      decoration: InputDecoration(
                          labelText: "TITLE",
                          border: OutlineInputBorder(),
                      ),
                    ),
                  )

              ),
              Container (
                  padding: EdgeInsets.only(left: 20.0, right: 16.0,
                      bottom: 20.0),
                  child: Theme(
                    data: new ThemeData(
                      primaryColor: _color,
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: 2,
                      controller: _subTitleController,
                      decoration: InputDecoration(
                          labelText: "SUBTITLE",
                          border: OutlineInputBorder(),

                      ),
                    ),
                  )

              )
            ],
          ),
        ],
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
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
