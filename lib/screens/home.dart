import 'package:flutter/material.dart';
import 'package:organization_app/screens/popups/ideasList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _listIdeas = ["Text 1", "Text 2", "Text 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        centerTitle: true,
        title: Text("ORGANIZATION", style: TextStyle(
          color: Colors.white,
        )),
      ),
      floatingActionButton: _buildFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomAppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(12.0),
                  itemCount: _listIdeas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(child: Icon(Icons.directions_bike)),
                      //title: Text(_listIdeas[index]["title"]),
                      //subtitle: Text("  ${_listIdeas[index]["subtitle"]}"),
                      title: Text(_listIdeas[index]),
                      subtitle: Text("  Just a aleatory text"),
                    );
                  }
              )
          )
        ],
      )
    );
  }

  void _openAddNewIdea() {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new IdeasList();
        },
        fullscreenDialog: true
    ));
  }

  Widget _buildFloatingButton() {
    return FloatingActionButton(
      onPressed: _openAddNewIdea,
      child: Icon(Icons.add, size: 30.0, color: Colors.white,),
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    );
  }
  Widget _buildBottomAppBar() {
    return Container(
      height: 55.0,
      child: BottomAppBar(
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              iconSize: 30.0,
              icon: ImageIcon(AssetImage("assets/icons/idea.png")),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 30.0,
              icon: ImageIcon(AssetImage("assets/icons/checklist.png")),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

}
